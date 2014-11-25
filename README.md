cmus-remote-vim
===============

This is a fork of professorsloth's cmus-remote that I went to install but it wouldn't work with
Pathogen. So I edited it a bit to make it compatible. 
Just clone into ~/.vim/bundle and add the shortcuts at the bottom to your .vimrc and you're good
to go!
All credit for the script goes to professorsloth. I only made minor edits.
---------------

Why I made this
---------------

I often listen to music while I write code,
and I don't have (or want) those fancy media keys that some people have on their keyboards.
Still wanted to be able to control my music player from my editor, so I wrote this.


How to use
----------

1. Place `plugin/cmus-remote.vim` in your `~/.vim/plugin/` directory.
2. Bind the functions you think you'll need in your `.vimrc`.
3. Smile.


Functions provided by this plugin
---------------------------------

 * Pause()
   * Pauses/resumes song.
 * Stop()
   * Commands **cmus** to stop playing music.
 * Play()
   * Command **cmus** to start playing music.
 * Next()
   * Jump to next track in playlist.
 * Previous()
   * Jump to previous track in playlist.
 * Current()
   * Echo artist, album and track title.


Example bindings for your .vimrc
--------------------------------

I have personally bound `cmus:next`, `cmus:previous` and `cmus:pause` in my `.vimrc`.

    " A few common cmus commands
    nnoremap <leader>n :call Next()<cr>
    nnoremap <leader>p :call Previous()<cr>
    nnoremap <leader><Space> :call Pause()<cr>

