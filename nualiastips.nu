let alias_tips = {
    if not (commandline | str starts-with "def ") {
        let existing_alias = help aliases | where {|ali| (commandline) | str starts-with -i ($ali.expansion)}
        if (($existing_alias | length) > 0) {
            let alias_to_use = $existing_alias | first
            print $"(ansi magenta)Alias tip: ($alias_to_use.name | to text) = ($alias_to_use.expansion | to text)(ansi reset)"
        }
    }
}
if ($env.config.hooks.pre_execution == null) {
    $env.config.hooks.pre_execution = [$alias_tips]
} else {
    $env.config.hooks.pre_execution = ($env.config.hooks.pre_execution | append $alias_tips)
}