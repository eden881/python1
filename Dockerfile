FROM debian/eol:squeeze

RUN apt-get update && apt-get install -y build-essential
ADD https://legacy.python.org/download/releases/1.6.1/Python-1.6.1.tar.gz /build/
RUN tar -xzf /build/Python-1.6.1.tar.gz -C /build

WORKDIR /build/Python-1.6.1
RUN ./configure --prefix=/opt/python1 && make && mkdir -p /opt/python1 && make install

ENV PATH="/opt/python1/bin:$PATH"
CMD ["python"]
