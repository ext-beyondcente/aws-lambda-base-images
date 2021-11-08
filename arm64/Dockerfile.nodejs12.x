FROM scratch

ADD 10b760087a7ad11cb0e68c9cc0979cee8709e38a072e1552550bdbb5eb82e076.tar.xz /
ADD 19e92930cd4e3b9092116d29c1ba2b6489ca5d6133b3e189005c479fb3c17988.tar.xz /
ADD 262f0a081eee1f30176862d2a7ecb0b1ca581c05283547ce230eb67ac7bd11c3.tar.xz /
ADD 4d46bf198738bfae44314b0123f84b5f629cad7ae4f5cd2d1b5e8ef052f1a0f0.tar.xz /
ADD 9ca4afeddae624e52d38f0410b42d5015fa8be7ac3b49b7ec4b522bec8d79048.tar.xz /
ADD de4ad99ca5c6fde720b1bb92fe90a141bfb10bd3df485b7058738ecf98f19f0e.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
