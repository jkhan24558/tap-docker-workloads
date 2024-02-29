FROM nginx
ADD ./print.sh ./print.sh
RUN chmod +x ./print.sh
EXPOSE 80
EXPOSE 8012
EXPOSE 8080
CMD ["./print.sh"]