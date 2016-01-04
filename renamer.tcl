# Renamer v0.1 by zer0c0nf

namespace eval rename_everything {
  # Set to channel
  variable chan "#help"
}

bind pub - !rename rename_everything

proc rename_everything { nick host hand chan arg } { 
 set arg [string map { " " "." } $arg]
 set arg [string map { "_" "." } $arg]
  putquick "PRIVMSG $chan $arg"
}

putlog "Renamer v0.1 iNTERNAL loaded ..."
