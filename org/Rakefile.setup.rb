EXCLUDES = [
  "Rakefile.org",
  "links.org",
  "log.org"
]

ORGS = [
  "RforS-II-index.org",
  "RforS-II-04.org",
  "RforS-II-05.org",
  "RforS-II-06.org",
  "RforS-II-07.org",
  "RforS-II-data.org",
  "RforS-II-common.org",
  "RforS-II-emacs.org",
]

SUBDIRS = [
]

HTMLS = ORGS.map do |f|
  File.basename(f,'.org')+".html"
end

