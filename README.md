# NuAliasTips

This is a `nushell` script that will provide you with tips when you might have an alias that could be used instead of a command you just typed.

## How it works

This script will use the pre_execution hook from NuShell and check if the command you just typed has an alias that could be used instead. If it finds one, it will print a tip with the alias that could be used instead.

## Installation

To install NuAliasTips, you can clone this repository into your nushell scripts folder and sourcing the `nualiastips.nu` script in your nu config file:

```bash
git clone https://github.com/fancy-whale/nualiastips.git ($nu.default-config-dir | path join scripts/nualiastips)
echo "source nualiastips/nualiastips.nu\n" | save --append $nu.config-path
```