%% Copyright (c) 2013-2015, Loïc Hoguin <essen@ninenines.eu>
%%
%% Permission to use, copy, modify, and/or distribute this software for any
%% purpose with or without fee is hereby granted, provided that the above
%% copyright notice and this permission notice appear in all copies.
%%
%% THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
%% WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
%% MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
%% ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
%% WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
%% ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
%% OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

-module(cow_mimetypes).

-export([all/1]).
-export([web/1]).

%% @doc Return the mimetype for any file by looking at its extension.

-spec all(binary()) -> {binary(), binary(), []}.
all(Path) ->
    {Type, SubType} = mimerl:filename(Path),
    {Type, SubType, []}.

%% @doc Return the mimetype for a Web related file by looking at its extension.

-spec web(binary()) -> {binary(), binary(), []}.
web(Path) ->
    {Type, SubType} = mimerl:web(Path),
    {Type, SubType, []}.
