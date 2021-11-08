FROM scratch

ADD 10a9c031f3c63f3e8919718e1172fcbebeacebaa36df95ec6e37c09bb2d18b7f.tar.xz /
ADD 3c461c2681ef4abdd99caef90d43fed2d2fab070d4885fc277dc9fb7046b8784.tar.xz /
ADD 7d5a0cf6f6698ebac612b39bbe8e9e56932dd12fbc5dcb62a8dbcb2e13a1d9bd.tar.xz /
ADD ac1aadb6d641488f56a7b78b1c584409ce9936fa3973b117e8247de0f3d6e8f3.tar.xz /
ADD cf769327563908ffbd7eedd024352cdec31b56ca25596d8e53db5fbb321e2d20.tar.xz /
ADD ee0008084bdc21c9ba09a67637fd283827670f0a49c01b846dc4ba5388d0024a.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
