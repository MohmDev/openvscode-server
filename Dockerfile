FROM gitpod/openvscode-server:latest

ENV OPENVSCODE_SERVER_ROOT="/home/.openvscode-server"
ENV OPENVSCODE="${OPENVSCODE_SERVER_ROOT}/bin/openvscode-server"

SHELL ["/bin/bash", "-c"]

RUN \
    exts=(\
        aaron-bond.better-comments \
        dsznajder.es7-react-js-snippets \
        # leizongmin.node-module-intellisense \
        xabikos.JavaScriptSnippets \
        # jasonnutter.search-node-modules \
        christian-kohler.npm-intellisense \
        # VisualStudioExptTeam.vscodeintellicode-api-usage-examples \
        ms-vscode.cpptools-themes \
        # ms-vscode.cpptools-extension-pack \
        # jeff-hykin.dev-cpp-theme \
        # VisualStudioExptTeam.vscodeintellicode \
        esbenp.prettier-vscode \
        github.github-vscode-theme \
        mhutchie.git-graph \
        formulahendry.code-runner \
        donjayamanne.git-project-manager \
        donjayamanne.githistory \
        formulahendry.auto-rename-tag \
        github.remotehub \
        ms-vscode-remote.remote-repositories \
        heybourn.headwind \
        bradlc.vscode-tailwindcss \
        alefragnani.project-manager \
        naumovs.relativepath \
        jock.svg \
        vincaslt.highlight-matching-tag \
        bierner.github-markdown-preview \
        yzhang.markdown-all-in-one \
        oderwat.indent-rainbow \
        Gruntfuggly.todo-tree \
        knisterpeter.vscode-gist \
        vsls-contrib.codetour \
        ms-vscode.browser-preview \
        whtouche.node-modules-viewer \
        bjdelange.tailwindshades \
        rvest.vs-code-prettier-eslint \
        ms-vscode.cpptools \
        graphql.vscode-graphql-syntax \
        ms-azuretools.azure-repos \
        codeswing.codeswing \
    )\
    && for ext in "${exts[@]}"; do ${OPENVSCODE} --install-extension "${ext}"; done
