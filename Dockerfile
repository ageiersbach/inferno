FROM derjudge/archlinux

## Use en_US.UTF-8 to avoid warning from elixir
ENV LANG="en_US.UTF-8"

## Install Elixir
RUN pacman -S --noconfirm elixir \
                          erlang

## Install Hex, the package manager for the Erlang ecosystem
Run yes | mix local.hex

## Install phoenix
Run yes | mix archive.install https://github.com/phoenixframework/phoenix/releases/download/v0.13.1/phoenix_new-0.13.1.ez

## Create a working directory
WORKDIR /inferno

## Output Elixir's version to ensure it was installed correctly
RUN elixir -v


