FROM nginx
ADD ./print.sh ./print.sh
RUN chmod +x ./print.sh
EXPOSE 8080
CMD ["./print.sh"]