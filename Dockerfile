FROM derjudge/archlinux

## Use en_US.UTF-8 to avoid warning from elixir
ENV LANG="en_US.UTF-8"

## Install Elixir
RUN pacman -S --noconfirm elixir

## Output Elixir's version to ensure it was installed correctly
RUN elixir -v


