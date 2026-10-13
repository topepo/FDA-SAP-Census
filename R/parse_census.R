# Read the census into one row per entry, and match regex vocabularies against
# its text. Needs dplyr, purrr and stringr.

# The rest of the first line in `x` that matches `pattern`, or NA if none does.
field <- function(x, pattern) {
  hit <- grep(pattern, x, value = TRUE)
  if (length(hit) == 0) {
    return(NA_character_)
  }
  str_trim(sub(pattern, "", hit[1]))
}

# One row per entry with its identifying fields. The entry's lines are kept in
# the `lines` list-column so that scripts can extract further fields from them.
read_census <- function(path) {
  lines <- readLines(path)
  end_line <- grep("^## Cross-cutting observations", lines)
  lines <- lines[seq_len(end_line - 1)]

  area_idx <- grep("^## ", lines)
  entry_idx <- grep("^### [0-9]+\\. ", lines)
  entry_end <- c(entry_idx[-1] - 1, length(lines))

  map2(entry_idx, entry_end, function(start, stop) {
    x <- lines[start:stop]
    header <- sub("^### [0-9]+\\. ", "", x[1])
    area <- lines[max(area_idx[area_idx < start])]
    approval <- field(x, "^\\*\\*Approval date:\\*\\*")
    tibble(
      drug = str_trim(sub(" — .*$", "", header)),
      application = str_trim(ifelse(
        grepl(" — ", header),
        sub("^.* — ", "", header),
        NA
      )),
      therapeutic_area = str_trim(sub("^## ", "", area)),
      sponsor = field(x, "^\\*\\*Sponsor:\\*\\*"),
      year = as.integer(str_extract(approval, "(19|20)[0-9]{2}")),
      lines = list(x)
    )
  }) |>
    list_rbind()
}

has <- function(x, pattern) grepl(pattern, x, ignore.case = TRUE, perl = TRUE)

# For each element of `x`, the names of all `patterns` it matches, joined by
# "; ", or `none` if it matches none of them.
collapse_hits <- function(x, patterns, none = "Not stated") {
  hits <- map(patterns, \(p) has(x, p))
  map_chr(seq_along(x), function(i) {
    found <- names(patterns)[map_lgl(hits, \(h) h[i])]
    if (length(found) == 0) {
      return(none)
    }
    paste(found, collapse = "; ")
  })
}
