# syntax=docker/dockerfile:1

FROM handsomefencer/club:production
 
RUN chmod +x mise/containers/app/entrypoints/production.do.sh

CMD /app/mise/containers/app/entrypoints/production.do.sh

