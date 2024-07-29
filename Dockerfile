FROM gitpod/openvscode-server:latest

ENV OPENVSCODE_SERVER_ROOT="/home/.openvscode-server"
ENV OPENVSCODE="${OPENVSCODE_SERVER_ROOT}/bin/openvscode-server"

SHELL ["/bin/bash", "-c"]

# Pre-install extensions if needed
RUN \
    urls=(\
        https://github.com/rust-lang/rust-analyzer/releases/download/2022-12-26/rust-analyzer-linux-x64.vsix \
        https://github.com/VSCodeVim/Vim/releases/download/v1.24.3/vim-1.24.3.vsix \
    )\
    && tdir=/tmp/exts && mkdir -p "${tdir}" && cd "${tdir}" \
    && wget "${urls[@]}" && \
    exts=(\
        gitpod.gitpod-theme \
        "${tdir}"/* \
    )\
    && for ext in "${exts[@]}"; do ${OPENVSCODE} --install-extension "${ext}"; done

# Expose the port
EXPOSE 3000

# Start openvscode-server with minimal arguments
CMD ["bin/openvscode-server", "--port", "3000", "--without-connection-token"]
