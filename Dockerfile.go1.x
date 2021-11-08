FROM scratch

ADD 38a7b1b4789f196e87860e0e520951904eddcf4444bf8349d6621fb5424a25fd.tar.xz /
ADD 3e36ddddc7e28408cbfc6ebad920213e429d310eb74492e0c3799dc9764a631f.tar.xz /
ADD 46a20b2134f5617ba5e24581702fbc1c584f3491a714a98583254d0850af5aa7.tar.xz /
ADD 75b7e284a33ab14194cf6bf0f3dfbd9ee346fc2c275b0f41610376f1c98fce41.tar.xz /
ADD b024869091b2ae87baded0b1c52d6192db7b47bdbfc2f14ddc810b57015894f0.tar.xz /
ADD bdb41fa0b998c1a9c7ab7a6d9c5eb2bcfff08b1b6069256f036e20568402c60f.tar.xz /
ADD cca947c9e501b4cef2447a12dd7d61e765428a8372d3111e656d0a58d9e2e531.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
