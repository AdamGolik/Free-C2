FROM ubuntu:20.04

WORKDIR /opt/c2

RUN apt update && apt install -y wget unzip && apt clean

# Kopiujemy lokalny plik binarki do obrazu (zmień nazwę na właściwą)
COPY C2_linux_amd64 /opt/c2/C2_linux_amd64

RUN chmod +x C2_linux_amd64

EXPOSE 8080

COPY c2.sh /opt/c2/c2.sh
RUN chmod +x /opt/c2/c2.sh

CMD ["/opt/c2/c2.sh"]
