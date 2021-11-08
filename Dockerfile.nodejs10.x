FROM scratch

ADD 06503635cc83d495db968b07a9515aac9c85ee05cc8ce45412111449575f834f.tar.xz /
ADD 16a64e23e0537f26fe87060d28f3b03c66c87fcd73dc6e9b24681a37a4d89d05.tar.xz /
ADD 700145d2b682333b91d6b4e2728861b1d9c56df3356a409018e39612679f5cdf.tar.xz /
ADD 8bb9f68c1b106bea1a6b64e3c08bf4d213778577d81bb88733093168246b7c68.tar.xz /
ADD d895595339d02d0c3fabe7ff205cf28d5a1ce1006e7737bd778806119bb1adc2.tar.xz /
ADD edbfcf098c20d53bb8dec1de7ea75c5a109e3900b6b9844cd2925ca4b6dd72f8.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
