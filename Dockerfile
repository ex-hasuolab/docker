FROM tensorflow/tensorflow:latest-gpu-py3-jupyter
LABEL maintainer="Gopesh"

# OpencvはCで書かれていてビルドが必要．
# そのためにgcc(GNU Compiler Collectionの略．C, Java, Fortran等の複数の言語に対応したコンパイラー.)や
# wget(curlのような働き)をインストールする必要がある．
RUN apt-get update -y && apt-get install -yq make cmake gcc g++ unzip wget build-essential gcc zlib1g-dev

RUN apt-get install -y libsm6 libxext6 libxrender-dev

# pipでインストールするライブラリを記載．
RUN pip install --upgrade pip && \
    pip install \
      keras \
      numpy \
      matplotlib \
      seaborn \
      scikit-learn \
      plotly \
      jupyterlab \
      opencv-python \ 
      kaggle \
      pandas
