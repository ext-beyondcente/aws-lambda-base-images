FROM scratch

ADD 09a8851cac35939fc83f448d0600ea739987bb52b8fc71c1c441c55b76793f75.tar.xz /
ADD 3c461c2681ef4abdd99caef90d43fed2d2fab070d4885fc277dc9fb7046b8784.tar.xz /
ADD 3eb2d03f66762bfb19555b6a2f89141282a28e2245694df37759176597336abc.tar.xz /
ADD 5e4afcae1ea27e588951ccefa2f504de838ef2ff121e7900ff89d3c30579b8f2.tar.xz /
ADD 703b28bb5e323a8faaaf2be7f8d8cdc9cbb0e9a546891fb512c0e04a85f6b80f.tar.xz /
ADD 95b4373fcadff893654b820c20b0dc5463428e54ef23765bd21ff518aaf6fd6c.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
