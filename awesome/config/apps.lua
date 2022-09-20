--[[ These are used through out the awesome config.
make sure to have output of commands as same as below, if you change. ]]--

-- set your terminal.
local term = os.getenv("TERMINAL") or 'kitty'

-- different terminal handle class differently, set how your works here
local termclass = term .. " --class"

if term == '' then
termclass = term .. " -c"
end

local home = os.getenv("HOME")

return {
-- Apps
    -- use same classes as below for terminal.
    terminal =                term,
    floatingterminal =        termclass .. ' scrachpad',
    internet =                termclass .. ' net nmtui',
    fullscreenterminal =      termclass .. ' fullscreenterminal',
    mpd =                     termclass .. ' music ncmpcpp',
    musicalt =                'spotify',
    editor =                  'micro',
    run =                     'rofi -config ' .. home .. '/.config/awesome/assets/configs/config.rasi  -show drun',
    browser =                 'brave-browser',
    files =                   'nemo',
    inkscape =                '~/Inkscape.AppImage',
    gimp =                    '~/Gimp.AppImage',
    custom =                  'lxappearance',
    flameshot =               'flameshot',
    fullShot =                'scrot -q 100 $HOME/Pictures/Screenshots/`date +%Y-%m-%d_%I:%M:%S`.png',
    windowShot =              'scrot -u -q 100 $HOME/Pictures/Screenshots/`date +%Y-%m-%d_%H:%M:%S`.png',
    bluetooth =               'blueberry',
    volumeapp  =              'pavucontrol',

-- Power
    power =                   'systemctl poweroff',
    restart =                 'systemctl reboot',
    suspend =                 'systemctl suspend',

-- updates
    update =                  term .. ' sudo apt update',
    updates =                 'checkupdates | wc -l',

-- These are used for keyboard shortcuts and scrolling on bar widgets.

-- you can use amixer/brightnessctl script and they'll work fine. but you'll need pamixer and xbacklight in your system to get values.
-- Brightness
    brightplus =              'brightnessctl set  +10%',
    brightless =              'brightnessctl set  10%- ',
--[ "$(xbacklight -get | cut -d "." -f1 )" -gt 1 ] &&
-- Volume
    volumeplus =              'pactl set-sink-volume @DEFAULT_SINK@ +10%',
    volumeless =              'pactl set-sink-volume @DEFAULT_SINK@ -10%',
    volumemute =              'pactl set-sink-mute @DEFAULT_SINK@ toggle',
}
