FROM nginx
ADD ./print.sh ./print.sh
EXPOSE 8080
CMD ["./print.sh"]