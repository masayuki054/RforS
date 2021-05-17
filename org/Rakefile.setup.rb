EXCLUDES = [
  "Rakefile.org",
  "links.org",
  "log.org"
]

ORGS = [
  "RforS.org",
]

SUBDIRS = [
]

HTMLS = ORGS.map do |f|
  File.basename(f,'.org')+".html"
end

