FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy website files
COPY src/ /usr/share/nginx/html/

# Expose HTTP port
EXPOSE 80

# Health check to ensure container is running correctly
HEALTHCHECK --interval=30s --timeout=5s \
    CMD wget -qo- http://localhost:80 || exit1;

ENTRYPOINT ["tini", "--"]
# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
