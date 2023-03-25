FROM nginx:latest
LABEL ifeng fscarmen mack-a ygkkk
EXPOSE 80
USER root
ENV uuid 3e7e830a-9be5-41c1-ad8b-b08403f33782
COPY nginx.conf /etc/nginx/nginx.conf
COPY config.json ./
COPY entrypoint.sh ./
RUN chmod a+x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]
