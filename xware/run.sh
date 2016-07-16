if [ ! -d data ]; then
    mkdir -p data
fi

docker run -t \
        --name=xware \
        -v $HOME/Downloads:/app/TDDOWNLOAD \
        xware
