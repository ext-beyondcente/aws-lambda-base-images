FROM scratch

ADD 10b760087a7ad11cb0e68c9cc0979cee8709e38a072e1552550bdbb5eb82e076.tar.xz /
ADD 477eaa651dceb49f58f4d13ea957c8ed6278787b135aaf1f99e550f69325c943.tar.xz /
ADD 5fdfb7d79f3e83e9d766d75a05de43ce820ec275b0e427c2c3428ab0f98dc2db.tar.xz /
ADD 6000cae00b28e471bebf29d40777a508cc1e2012e40b3b48a56e9e63ea1c48af.tar.xz /
ADD 880dd11769de3c484458d6d0fd272b3129652fdf41f1628442cf241a48a1f78d.tar.xz /
ADD f576a5844fdf7ff699837fd1608f4ddc38dc8e34164f92f7c4ea6dec8213445f.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
