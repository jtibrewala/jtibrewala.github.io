## for Powerlevel9K
# https://github.com/bhilburn/powerlevel9k#prompt-customization
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir vcs rbenv newline status)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_CUSTOM_RUBY="echo -n '\ue21e' Ruby"
POWERLEVEL9K_CUSTOM_RUBY_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_RUBY_BACKGROUND="red"
#POWERLEVEL9K_MODE='nerdfont-complete'
#POWERLEVEL9K_MODE='awesome-patched'
#POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uE868  %d.%m.%y}"
POWERLEVEL9K_NVM_BACKGROUND="black"
POWERLEVEL9K_NVM_FOREGROUND="249"
POWERLEVEL9K_NVM_VISUAL_IDENTIFIER_COLOR="green"
POWERLEVEL9K_RVM_BACKGROUND="black"
POWERLEVEL9K_RVM_FOREGROUND="249"
POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_CUSTOM_PYLINT_BACKGROUND="black"
POWERLEVEL9K_CUSTOM_PYLINT_FOREGROUND="red"

#POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uE868  %d.%m.%y}"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M} \uE12E"
#POWERLEVEL9K_COLOR_SCHEME='light'
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=3

# For default prompt
DEFAULT_USER="jaideep"

# Set P9KGT background color, either 'light' or 'dark' (this should match the GNOME Terminal's theme).
P9KGT_BACKGROUND='dark'
if [[ $P9KGT_BACKGROUND != 'light' ]] && [[ $P9KGT_BACKGROUND != 'dark' ]]
then
    P9KGT_ERROR=true
    echo "P9KGT error: variable 'P9KGT_BACKGROUND' should be either 'light' or 'dark'"
fi

# Set P9KGT color scheme, either 'light', 'dark' or 'bright' (choose by preference).
P9KGT_COLORS='bright'
if [[ $P9KGT_COLORS != 'light' ]] && [[ $P9KGT_COLORS != 'dark' ]] && [[ $P9KGT_COLORS != 'bright' ]]
then
    P9KGT_ERROR=true
    echo "P9KGT error: variable 'P9KGT_COLORS' should be either 'light', 'dark' or 'bright'"
fi

# Set P9KGT fonts mode, either 'default', 'awesome-fontconfig', 'awesome-mapped-fontconfig', 'awesome-patched', 'nerdfont-complete' or 'nerdfont-fontconfig'.
# https://github.com/bhilburn/powerlevel9k/wiki/About-Fonts
#P9KGT_FONTS='nerdfont-complete'
#POWERLEVEL9K_MODE='awesome-patched'
#POWERLEVEL9K_MODE='awesome-fontconfig'
P9KGT_FONTS='awesome-fontconfig'
if [[ $P9KGT_FONTS != 'default' ]] && [[ $P9KGT_FONTS != 'awesome-fontconfig' ]] && [[ $P9KGT_FONTS != 'awesome-mapped-fontconfig' ]] &&
    [[ $P9KGT_FONTS != 'awesome-patched' ]] && [[ $P9KGT_FONTS != 'nerdfont-complete' ]] && [[ $P9KGT_FONTS != 'nerdfont-fontconfig' ]]
then
    P9KGT_ERROR=true
    echo "P9KGT error: variable 'P9KGT_FONTS' should be either 'default', 'awesome-fontconfig', 'awesome-mapped-fontconfig', 'awesome-patched', 'nerdfont-complete' or 'nerdfont-fontconfig'"
else
    P9K_MODE=$P9KGT_FONTS
fi

if [[ $P9KGT_ERROR != true ]]
then

    # Set P9KGT background color
    if [[ $P9KGT_BACKGROUND == 'light' ]]
    then
        # https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt#light-color-theme
        P9K_COLOR_SCHEME='light'
        P9KGT_TERMINAL_BACKGROUND=231
    elif [[ $P9KGT_BACKGROUND == 'dark' ]]
    then
        P9K_COLOR_SCHEME='dark'
        P9KGT_TERMINAL_BACKGROUND=236
    fi

    # Set P9KGT foreground colors
    if [[ $P9KGT_COLORS == 'light' ]]
    then
        P9KGT_RED=009
        P9KGT_GREEN=010
        P9KGT_YELLOW=011
        P9KGT_BLUE=012
    elif [[ $P9KGT_COLORS == 'dark' ]]
    then
        P9KGT_RED=001
        P9KGT_GREEN=002
        P9KGT_YELLOW=003
        P9KGT_BLUE=004
    elif [[ $P9KGT_COLORS == 'bright' ]]
    then
        P9KGT_RED=196
        #P9KGT_GREEN=148
        P9KGT_GREEN=154
        P9KGT_YELLOW=220
        P9KGT_BLUE=075
    fi

    # Set 'context' segment colors
    # https://github.com/bhilburn/powerlevel9k/blob/next/segments/context/README.md
    P9K_CONTEXT_DEFAULT_FOREGROUND=$P9KGT_YELLOW
    P9K_CONTEXT_ROOT_FOREGROUND=$P9KGT_YELLOW
    P9K_CONTEXT_SUDO_FOREGROUND=$P9KGT_YELLOW
    P9K_CONTEXT_REMOTE_FOREGROUND=$P9KGT_YELLOW
    P9K_CONTEXT_REMOTE_SUDO_FOREGROUND=$P9KGT_YELLOW

    P9K_CONTEXT_DEFAULT_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_CONTEXT_ROOT_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_CONTEXT_SUDO_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_CONTEXT_REMOTE_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_CONTEXT_REMOTE_SUDO_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND

    # Set 'dir_writable' segment colors
    # https://github.com/bhilburn/powerlevel9k/blob/next/segments/dir_writable/README.md
    P9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND=$P9KGT_YELLOW
    P9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND=$P9KGT_RED

    # Set 'dir' segment colors
    # https://github.com/bhilburn/powerlevel9k/blob/next/segments/dir/README.md
    P9K_DIR_DEFAULT_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_DIR_HOME_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_DIR_HOME_SUBFOLDER_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_DIR_ETC_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_DIR_DEFAULT_BACKGROUND=$P9KGT_BLUE
    P9K_DIR_HOME_BACKGROUND=$P9KGT_BLUE
    P9K_DIR_HOME_SUBFOLDER_BACKGROUND=$P9KGT_BLUE
    P9K_DIR_ETC_BACKGROUND=$P9KGT_BLUE

    P9K_DIR_SHORTEN_LENGTH=3
    P9K_DIR_SHORTEN_STRATEGY="truncate_middle"

    # Set 'vcs' segment colors
    # https://github.com/bhilburn/powerlevel9k/blob/next/segments/vcs/README.md
    P9K_VCS_CLEAN_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_VCS_MODIFIED_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_VCS_CLOBBERED_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_VCS_UNTRACKED_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_VCS_CLEAN_BACKGROUND=$P9KGT_GREEN
    P9K_VCS_MODIFIED_BACKGROUND=$P9KGT_YELLOW
    P9K_VCS_CLOBBERED_BACKGROUND=$P9KGT_RED
    P9K_VCS_UNTRACKED_BACKGROUND=$P9KGT_GREEN
    #POWERLEVEL9K_VCS_GIT_ICON='\uE1AA'
    #POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uE1AA'
    P9K_VCS_SHORTEN_LENGTH=4
    P9K_VCS_SHORTEN_MIN_LENGTH=11
    P9K_VCS_DIR_SHORTEN_STRATEGY="truncate_middle"
    P9K_VCS_DIR_SHORTEN_DELIMITER=".."

    # Set 'status' segment colors
    # https://github.com/bhilburn/powerlevel9k/blob/next/segments/status/README.md
    P9K_STATUS_CROSS=true
    P9K_STATUS_OK_FOREGROUND=$P9KGT_GREEN
    P9K_STATUS_ERROR_FOREGROUND=$P9KGT_RED
    P9K_STATUS_OK_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_STATUS_ERROR_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND

    # Set 'root_indicator' segment colors
    # https://github.com/bhilburn/powerlevel9k/blob/next/segments/root_indicator/README.md
    P9K_ROOT_INDICATOR_FOREGROUND=$P9KGT_YELLOW
    P9K_ROOT_INDICATOR_BACKGROUND=$P9KGT_TERMINAL_BACKGROUND

    # Set 'background_jobs' segment colors
    # https://github.com/bhilburn/powerlevel9k/blob/next/segments/background_jobs/README.md
    P9K_BACKGROUND_JOBS_FOREGROUND=$P9KGT_TERMINAL_BACKGROUND
    P9K_BACKGROUND_JOBS_BACKGROUND=$P9KGT_YELLOW

    # Customize prompt
    # https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt#adding-newline-before-each-prompt
    P9K_PROMPT_ADD_NEWLINE=true
    # https://github.com/bhilburn/powerlevel9k/tree/next#customizing-prompt-segments
    P9K_LEFT_PROMPT_ELEMENTS=(ssh dir_writable dir context vcs)
    P9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv pyenv rbenv root_indicator background_jobs)
    #POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir vcs rbenv newline status)
    #POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
fi

# `Pyenv` is deprecated, use `python -v` instead
alias pyenv="echo $(python3 -V | grep -Eo '[0-9\.]+$')"
