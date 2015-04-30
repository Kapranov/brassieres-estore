#!/usr/bin/env ruby
# Remove all gems EXCEPT defaults :)

#
# gem list | cut -d" " -f1
# gem uninstall -Iax STRING
# gem uninstall -Iax
# xargs gem uninstall -aIx
# gem list | cut -d" " -f1 | xargs gem uninstall -aIx
# gem list --no-version | xargs gem uninstall -aIx
#
# It ignores default gem errors and just proceeds:
# for i in `gem list --no-versions`; do gem uninstall -aIx $i; done
#
#
#
#

`gem list -d`.split(/\n\n^(?=\w)/).each do |data|
  match = data.match(/(?<name>([^\s]+)) \((?<versions>.*)\)/)
  name = match[:name]
  versions = match[:versions].split(', ')

  if match = data.match(/^.*\(([\d\.]*),? ?default\): .*$/)
    next if match[1].empty? # it's the only version if this match is empty
    versions.delete(match[1] || versions[0])
  end

  versions.each { |v| system "gem uninstall -Ix #{name} -v #{v}" }
end
