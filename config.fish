set fish_greeting ""

if status is-interactive
        date
        cowsay "Remember to look up at the stars and not down at yo
ur feet. Try to make sense of what you see and wonder about
what makes the universe exist. Be curious. And however dif
ficult life may seem, there is always something you can do
and succeed at.
It matters that you don't just give up."
end

function fish_prompt
    set -l exit_code $status
    set -l pwd_abbr (prompt_pwd)

    set_color yellow
    set_color normal

    if test $exit_code -ne 0
        set_color red
        echo -n "$exit_code"
        set_color normal
    else
        set_color green
        echo -n "$exit_code"
        set_color normal
    end

    echo -n " "

    set_color blue
    echo -n "$pwd_abbr"
    set_color normal

    echo -n " > "
end
