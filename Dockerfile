FROM gitpod/openvscode-server:latest

ENV OPENVSCODE_SERVER_ROOT="/home/.openvscode-server"
ENV OPENVSCODE="${OPENVSCODE_SERVER_ROOT}/bin/openvscode-server"

SHELL ["/bin/bash", "-c"]
RUN \
    # List of extensions
    exts=(\
        # Pre-installed extensions from the list you provided
        # Some extensions might need to be verified for availability on open-vsx.org
        better-comments \
        dsznajder.es7-react-js-snippets \
        leizongmin.node-module-intellisense \
        xabikos.JavaScriptSnippets \
        jasonnutter.search-node-modules \
        christian-kohler.npm-intellisense \
        VisualStudioExptTeam.vscodeintellicode-api-usage-examples \
        ms-vscode.cpptools-themes \
        ms-vscode.cpptools-extension-pack \
        jeff-hykin.dev-cpp-theme \
        VisualStudioExptTeam.vscodeintellicode \
        esbenp.prettier-vscode \
        github.github-vscode-theme \
        mhutchie.git-graph \
        formulahendry.code-runner \
        copilot \
        felixfbecker.php-debug \
        donjayamanne.git-project-manager \
        donjayamanne.githistory \
        formulahendry.auto-rename-tag \
        yy0931.web-preview \
        ms-vscode-remote.remote-explorer \
        github.remotehub \
        ms-vscode-remote.remote-repositories \
        heybourn.headwind \
        bradlc.vscode-tailwindcss \
        alefragnani.project-manager \
        naumovs.relativepath \
        jock.svg \
        vincaslt.highlight-matching-tag \
        aaron-bond.better-comments \
        graphql.vscode-graphql \
        redhat.vscode-xml \
        bierner.github-markdown-preview \
        shd101wyy.markdown-preview-enhanced \
        yzane.markdown-pdf \
        bierner.markdown-footnotes \
        yzhang.markdown-all-in-one \
        oderwat.indent-rainbow \
        Gruntfuggly.todo-tree \
        knisterpeter.vscode-gist \
        vsls-contrib.codetour \
        devon-vs-code-nestjs \
        ms-vscode.browser-preview \
        whtouche.node-modules-viewer \
        ms-azuretools.vscode-docker \
        bjdelange.tailwindshades \
        bradlc.vscode-tailwindcss \
        rvest.vs-code-prettier-eslint \
        ms-vscode.cpptools \
        graphql.vscode-graphql-syntax \
        vs-code.prettier-eslint \
        vscode-sanity \
        ms-azuretools.azure-repos \
        codeswing \
    )\
    # Install the $exts
    && for ext in "${exts[@]}"; do ${OPENVSCODE} --install-extension "${ext}"; done
