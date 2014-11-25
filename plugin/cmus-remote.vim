function! Trim_whitespace(target)
    let target = substitute(a:target, "^\\s\\+\\|\\s\\+$", "", "g")
    let target = substitute(target, "^\\n\\+\\|\\n\\+$", "", "g")
    return target
endfunction

function! Get_song_info()
    let artist = system('cmus-remote -Q | grep "tag artist " | cut -d " " -f 3-')
    let album = system('cmus-remote -Q | grep "tag album " | cut -d " " -f 3-')
    let song = system('cmus-remote -Q | grep "tag title " | cut -d " " -f 3-')

    let artist = Trim_whitespace(artist)
    let album = Trim_whitespace(album)
    let song = Trim_whitespace(song)

    return artist . " - " . album . " - " . song
endfunction

function! Pause()
    let result = system('cmus-remote --pause')
    echo "Pausing/resuming " . Get_song_info()
endfunction

function! Stop()
    let result = system('cmus-remote --stop')
    echo Get_song_info()
endfunction

function! Play()
    let result = system('cmus-remote --play')
    echo "Playing " . Get_song_info()
endfunction

function! Next()
    let result = system('cmus-remote --next')
    echo "Playing " . Get_song_info()
endfunction

function! Previous()
    let result = system('cmus-remote --prev')
    echo "Playing " . Get_song_info()
endfunction

function! Current()
    echo Get_song_info()
endfunction
