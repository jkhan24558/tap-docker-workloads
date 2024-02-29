FROM nginx
ADD ./print.sh ./print.sh
RUN chmod +x ./print.sh
EXPOSE 80
CMD ["./print.sh"]