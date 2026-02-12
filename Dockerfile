FROM golang AS build
WORKDIR /build
COPY . .
RUN make
RUN ls -lah .

FROM scratch AS production
COPY --from=build /build /
EXPOSE 3000
ENTRYPOINT ["/main"]