EXCLUDES = [
  "Rakefile.org",
  "links.org",
  "log.org"
]

ORGS = [
  "index.org",
  "RforS-0.org",
  "RforS-1.org",
  "RforS-2.org",
]

SUBDIRS = [
]

HTMLS = ORGS.map do |f|
  File.basename(f,'.org')+".html"
end

