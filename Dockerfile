FROM alpine

RUN ["apk", "add", "--no-cache", "bash"]
RUN ["apk", "add", "--no-cache", "curl"]
RUN ["apk", "add", "--no-cache", "openjdk11"]
RUN ["apk", "add", "--no-cache", "git"]
RUN ["apk", "add", "--no-cache", "libstdc++"]
RUN ["apk", "add", "--no-cache", "busybox-extras"]

RUN ["/bin/bash", "-c", "echo 'https://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories"]
RUN ["apk", "add", "--no-cache", "rlwrap"]

RUN [ "/bin/bash", "-c", "curl https://download.clojure.org/install/linux-install-1.10.3.822.sh -o install-clojure.sh ; chmod +x install-clojure.sh ; ./install-clojure.sh ; rm install-clojure.sh"]


