RUN echo "$VERSION test" > /messages.txt
WORKDIR /opt
COPY --from=builder /messages.txt /opt/new-messages.txt
CMD ["cat","/opt/new-messages.txt"]