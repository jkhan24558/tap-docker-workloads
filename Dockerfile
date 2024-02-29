FROM nginx
ADD pring.sh ./print.sh
EXPOSE 8080
CMD ["./print.sh"]