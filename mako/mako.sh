#!/usr/bin/env sh

# Terminate already running instance
killall -q mako

# Wait until the processes have been shutdown
while pgrep -x mako >/dev/null; do sleep 1; done

# Launch mako (with configurations)
mako \
--background-color "#222222DD"   \
--border-size       1            \
--border-color     "#888888DD"   \
--border-radius     10           \
--progress-color   "#444444"     \
--anchor            bottom-right \
--default-timeout   5000


### Mako --help ###
# Usage: mako [options...]
# 
#   -h, --help                          Show help message and quit.
#       --font <font>                   Font family and size.
#       --background-color <color>      Background color.
#       --text-color <color>            Text color.
#       --width <px>                    Notification width.
#       --height <px>                   Max notification height.
#       --margin <px>[,<px>...]         Margin values, comma separated.
#                                       Up to four values, with the same
#                                       meaning as in CSS.
#       --padding <px>[,<px>...]        Padding values, comma separated.
#                                       Up to four values, with the same
#                                       meaning as in CSS.
#       --border-size <px>              Border size.
#       --border-color <color>          Border color.
#       --border-radius <px>            Corner radius
#       --progress-color <color>        Progress indicator color.
#       --icons <0|1>                   Show icons in notifications.
#       --icon-path <path>[:<path>...]  Icon search path, colon delimited.
#       --max-icon-size <px>            Set max size of icons.
#       --markup <0|1>                  Enable/disable markup.
#       --actions <0|1>                 Enable/disable application action
#                                       execution.
#       --format <format>               Format string.
#       --hidden-format <format>        Format string.
#       --max-visible <n>               Max number of visible notifications.
#       --sort <sort_criteria>          Sorts incoming notifications by time
#                                       and/or priority in ascending(+) or
#                                       descending(-) order.
#       --default-timeout <timeout>     Default timeout in milliseconds.
#       --ignore-timeout <0|1>          Enable/disable notification timeout.
#       --output <name>                 Show notifications on this output.
#       --layer <layer>                 Arrange notifications at this layer.
#       --anchor <position>             Position on output to put notifications.
# 
# Colors can be specified with the format #RRGGBB or #RRGGBBAA.