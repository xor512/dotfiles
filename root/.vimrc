USER=$USER

" Don't forget to make symlink /root/.vim -> /home/$USER/.vim

if filereadable(glob("/home/$USER/.vimrc")) 
    source /home/$USER/.vimrc
endif
