#no precompilation;
#use Grammar::Tracer;

use Cro::Uri;

use Pakku::Spec;

grammar Pakku::Grammar::Cmd {


  proto rule TOP { * }
  rule TOP:sym<add>    { <pakkuopt>* % <.space> <add>    <addopt>*    % <.space> <whats>    }
  rule TOP:sym<remove> { <pakkuopt>* % <.space> <remove> <removeopt>* % <.space> <whats>    }
  rule TOP:sym<list>   { <pakkuopt>* % <.space> <list>   <listopt>*   % <.space> <whats>?   }
  rule TOP:sym<help>   { <help>? <cmd>? <anything> }


  proto token cmd { * }
  token cmd:sym<add>    { <!before <.space>> ~ <!after <.space>> <add> }
  token cmd:sym<remove> { <!before <.space>> ~ <!after <.space>> <remove> }
  token cmd:sym<list>   { <!before <.space>> ~ <!after <.space>> <list> }
  token cmd:sym<help>   { <!before <.space>> ~ <!after <.space>> <help> }


  proto token add { * }
  token add:sym<a>   { <sym> }
  token add:sym<add> { <sym> }
  token add:sym<↓>   { <sym>  }

  proto token remove { * }
  token remove:sym<remove> { <sym> }
  token remove:sym<r>      { <sym> }

  proto token list { * }
  token list:sym<list> { <sym> }
  token list:sym<l>    { <sym> }

  proto token help { * }
  token help:sym<help> { <sym> }
  token help:sym<h>    { <sym> }


  proto token pakkuopt { * }
  token pakkuopt:sym<update>  { <update>   }
  token pakkuopt:sym<pretty>  { <pretty> }
  token pakkuopt:sym<please>  { <sym>    }
  token pakkuopt:sym<repo>    { <repo>    <.space>* <reponame> }
  token pakkuopt:sym<verbose> { <verbose> <.space>* <level> }

  proto token addopt { * }
  token addopt:sym<deps>  { <deps>  }
  token addopt:sym<build> { <build> }
  token addopt:sym<test>  { <test>  }
  token addopt:sym<force> { <force> }
  token addopt:sym<into>  { <into> <.space>* <reponame> }


  proto token removeopt { * }
  token removeopt:sym<deps> { <deps> }
  token removeopt:sym<from> { <from> <.space>* <reponame> }


  proto token listopt { * }
  token listopt:sym<remote>  { <remote> }
  token listopt:sym<local>   { <local> }
  token listopt:sym<details> { <details> }
  token listopt:sym<repo>    { <repo> <.space>* <reponame> }


  proto token update { * }
  token update:sym<update>   { <sym> }
  token update:sym<u>        { <sym> }
  token update:sym<noupdate> { <sym> }
  token update:sym<nu>       { <sym> }

  proto token pretty { * }
  token pretty:sym<pretty>   { <sym> }
  token pretty:sym<p>        { <sym> }
  token pretty:sym<nopretty> { <sym> }
  token pretty:sym<np>       { <sym> }

  proto token repo { * }
  token repo:sym<repo> { <sym> }

  proto token verbose { * }
  token verbose:sym<verbose> { <sym> }
  token verbose:sym<v>       { <sym> }


  proto token deps { * }
  token deps:sym<deps>   { <sym> }
  token deps:sym<d>      { <sym> }
  token deps:sym<nodeps> { <sym> }
  token deps:sym<nd>     { <sym> }

  proto token build { * }
  token build:sym<build>   { <sym> }
  token build:sym<b>       { <sym> }
  token build:sym<nobuild> { <sym> }
  token build:sym<nb>      { <sym> }

  proto token test { * }
  token test:sym<test>   { <sym> }
  token test:sym<t>      { <sym> }
  token test:sym<notest> { <sym> }
  token test:sym<nt>     { <sym> }

  proto token force { * }
  token force:sym<force>   { <sym> }
  token force:sym<f>       { <sym> }
  token force:sym<noforce> { <sym> }
  token force:sym<nf>      { <sym> }

  proto token into { * }
  token into:sym<into> { <sym> }

  proto token from { * }
  token from:sym<from> { <sym> }

  proto token remote { * }
  token remote:sym<remote>   { <sym> }
  token remote:sym<r>        { <sym> }
  token remote:sym<noremote> { <sym> }
  token remote:sym<nr>       { <sym> }

  proto token local { * }
  token local:sym<local>   { <sym> }
  token local:sym<l>       { <sym> }
  token local:sym<nolocal> { <sym> }
  token local:sym<nl>      { <sym> }

  proto token details { * }
  token details:sym<details>   { <sym> }
  token details:sym<d>         { <sym> }
  token details:sym<nodetails> { <sym> }
  token details:sym<nd>        { <sym> }

  proto token reponame { * }
  token reponame:sym<home>   { <sym> }
  token reponame:sym<site>   { <sym> }
  token reponame:sym<vendor> { <sym> }
  token reponame:sym<core>   { <sym> }


  proto token level { * }
  token level:sym<TRACE> { <sym> }
  token level:sym<DEBUG> { <sym> }
  token level:sym<INFO>  { <sym> }
  token level:sym<WARN>  { <sym> }
  token level:sym<ERROR> { <sym> }
  token level:sym<FATAL> { <sym> }
  token level:sym<trace> { <sym> }
  token level:sym<debug> { <sym> }
  token level:sym<info>  { <sym> }
  token level:sym<warn>  { <sym> }
  token level:sym<error> { <sym> }
  token level:sym<fatal> { <sym> }
  token level:sym<42>    { <sym> }
  token level:sym<T>     { <sym> }
  token level:sym<D>     { <sym> }
  token level:sym<I>     { <sym> }
  token level:sym<W>     { <sym> }
  token level:sym<E>     { <sym> }
  token level:sym<F>     { <sym> }
  token level:sym<1>     { <sym> }
  token level:sym<2>     { <sym> }
  token level:sym<3>     { <sym> }
  token level:sym<4>     { <sym> }
  token level:sym<5>     { <sym> }
  token level:sym<6>     { <sym> }
  token level:sym<🦋>     { <sym> }
  token level:sym<✗>     { <sym> }


  token whats { <what>+ % \h }

  proto token what { * }
  token what:sym<spec> { <spec> }
  token what:sym<path> { <path> }

  token spec { <name> <keyval>* }
  token path { <[ a..z A..Z 0..9 \-_.!~*'():@&=+$,/ ]>+ }

  token name { [<-[./:<>()\h]>+]+ % '::' }

  token keyval { ':' <key> <value> }

  proto token key { * }
  token key:sym<ver>     { <sym> }
  token key:sym<auth>    { <sym> }
  token key:sym<api>     { <sym> }
  token key:sym<from>    { <sym> }
  token key:sym<version> { <sym> }

  proto token value { * }
  token value:sym<angles> { '<' ~ '>' $<val>=[.*? <~~>?] }
  token value:sym<parens> { '(' ~ ')' $<val>=[.*? <~~>?] }


  token lt { '<' }
  token gt { '>' }
  token anything { .* }
}

class Pakku::Grammar::Cmd::Actions {


  method TOP:sym<add> ( $/ ) {

    my %cmd;

    %cmd<cmd>       = 'add';
    %cmd<pakku>     = $<pakkuopt>».ast.hash if defined $<pakkuopt>;
    %cmd<add>       = $<addopt>».ast.hash   if defined $<addopt>;
    %cmd<add><what> = $<whats>.ast;

    make %cmd;

  }


  method TOP:sym<remove> ( $/ ) {

    my %cmd;

    %cmd<cmd>          = 'remove';
    %cmd<pakku>        = $<pakkuopt>».ast.hash  if defined $<pakkuopt>;
    %cmd<remove>       = $<removeopt>».ast.hash if defined $<removeopt>;
    %cmd<remove><what> = $<whats>.ast;

    make %cmd;

  }


  method TOP:sym<list> ( $/ ) {

    my %cmd;

    %cmd<cmd>        = 'list';
    %cmd<pakku>      = $<pakkuopt>».ast.hash if defined $<pakkuopt>;
    %cmd<list>       = $<listopt>».ast.hash  if defined $<listopt>;
    %cmd<list><what> = $<whats>.ast          if defined $<whats>;

    make %cmd;

  }


  method TOP:sym<help> ( $/ ) {

    my %cmd;

    %cmd<cmd>  = 'help';
    %cmd<help><cmd> = $<cmd>.so ?? $<cmd>.ast !! '';

    make %cmd;

  }

  method cmd:sym<add>    ( $/ ) { make 'add'    }
  method cmd:sym<list>   ( $/ ) { make 'list'   }
  method cmd:sym<help>   ( $/ ) { make 'help'   }
  method cmd:sym<remove> ( $/ ) { make 'remove' }

  method pakkuopt:sym<update>  ( $/ ) { make $<update>.ast }
  method pakkuopt:sym<pretty>  ( $/ ) { make $<pretty>.ast }
  method pakkuopt:sym<please>  ( $/ ) { make ( :please )   }
  method pakkuopt:sym<verbose> ( $/ ) { make ( verbose => $<level>.ast ) }

  method pakkuopt:sym<repo>    ( $/ ) {

    my $repo = $<reponame>.ast;

    make ~$<repo> => $repo;

  }


  method addopt:sym<deps>  ( $/ ) { make $<deps>.ast  }
  method addopt:sym<build> ( $/ ) { make $<build>.ast }
  method addopt:sym<test>  ( $/ ) { make $<test>.ast  }
  method addopt:sym<force> ( $/ ) { make $<force>.ast }

  method addopt:sym<into>  ( $/ ) {

    my $into = $<reponame>.ast;

    $into.next-repo = Nil;

    make ~$<into> => $into;

  }


  method removeopt:sym<deps> ( $/ ) { make $<deps>.ast }

  method removeopt:sym<from> ( $/ ) {

    my $from = $<reponame>.ast;

    $from.next-repo = Nil;

    make ~$<from> => $from;
  }


  method listopt:sym<remote>  ( $/ ) { make $<remote>.ast }
  method listopt:sym<local>   ( $/ ) { make $<local>.ast  }
  method listopt:sym<details> ( $/ ) { make $<details>.ast   }

  method listopt:sym<repo> ( $/ ) {

    my $repo = $<reponame>.ast;

    $repo.next-repo = Nil;

    make ~$<repo> => $repo;
  }


  method whats ( $/ ) { make $<what>».ast }

  method what:sym<spec> ( $/ ) { make $<spec>.ast }
  method what:sym<path> ( $/ ) { make $<path>.ast }

  method spec ( $/ ) {

    make Pakku::Spec.new: spec => $/.Str;

  }

  method path ( $/ ) { make $/.IO }

  method update:sym<update>   ( $/ )  { make ( :update  ) }
  method update:sym<u>        ( $/ )  { make ( :update  ) }
  method update:sym<noupdate> ( $/ )  { make ( :!update ) }
  method update:sym<nu>       ( $/ )  { make ( :!update ) }

  method pretty:sym<pretty>   ( $/ )  { make ( :pretty  ) }
  method pretty:sym<p>        ( $/ )  { make ( :pretty  ) }
  method pretty:sym<nopretty> ( $/ )  { make ( :!pretty ) }
  method pretty:sym<np>       ( $/ )  { make ( :!pretty ) }


  method deps:sym<deps>   ( $/ )  { make ( :deps  ) }
  method deps:sym<d>      ( $/ )  { make ( :deps  ) }
  method deps:sym<nodeps> ( $/ )  { make ( :!deps ) }
  method deps:sym<nd>     ( $/ )  { make ( :!deps ) }

  method build:sym<build>   ( $/ )  { make ( :build  ) }
  method build:sym<b>       ( $/ )  { make ( :build  ) }
  method build:sym<nobuild> ( $/ )  { make ( :!build ) }
  method build:sym<nb>      ( $/ )  { make ( :!build ) }

  method test:sym<test>   ( $/ )  { make ( :test  ) }
  method test:sym<t>      ( $/ )  { make ( :test  ) }
  method test:sym<notest> ( $/ )  { make ( :!test ) }
  method test:sym<nt>     ( $/ )  { make ( :!test ) }

  method force:sym<force>   ( $/ )  { make ( :force  ) }
  method force:sym<f>       ( $/ )  { make ( :force  ) }
  method force:sym<noforce> ( $/ )  { make ( :!force ) }
  method force:sym<nf>      ( $/ )  { make ( :!force ) }

  method remote:sym<remote>   ( $/ )  { make ( :remote  ) }
  method remote:sym<r>        ( $/ )  { make ( :remote  ) }
  method remote:sym<noremote> ( $/ )  { make ( :!remote ) }
  method remote:sym<nr>       ( $/ )  { make ( :!remote ) }

  method local:sym<local>   ( $/ ) { make ( :local  ) }
  method local:sym<l>       ( $/ ) { make ( :local  ) }
  method local:sym<nolocal> ( $/ ) { make ( :!local ) }
  method local:sym<nl>      ( $/ ) { make ( :!local ) }

  method details:sym<details>   ( $/ ) { make ( :details  ) }
  method details:sym<d>         ( $/ ) { make ( :details  ) }
  method details:sym<nodetails> ( $/ ) { make ( :!details ) }
  method details:sym<nd>        ( $/ ) { make ( :!details ) }

  method reponame:sym<home> ( $/ ) {
    make CompUnit::RepositoryRegistry.repository-for-name: $<sym>.Str
  }

  method reponame:sym<site> ( $/ ) {
    make CompUnit::RepositoryRegistry.repository-for-name: $<sym>.Str
  }

  method reponame:sym<vendor> ( $/ ) {
    make CompUnit::RepositoryRegistry.repository-for-name: $<sym>.Str
  }

  method reponame:sym<core> ( $/ ) {
    make CompUnit::RepositoryRegistry.repository-for-name: $<sym>.Str
  }

  method level:sym<TRACE> ( $/ ) { make 1 }
  method level:sym<DEBUG> ( $/ ) { make 2 }
  method level:sym<INFO>  ( $/ ) { make 3 }
  method level:sym<WARN>  ( $/ ) { make 4 }
  method level:sym<ERROR> ( $/ ) { make 5 }
  method level:sym<FATAL> ( $/ ) { make 6 }
  method level:sym<trace> ( $/ ) { make 1 }
  method level:sym<debug> ( $/ ) { make 2 }
  method level:sym<info>  ( $/ ) { make 3 }
  method level:sym<warn>  ( $/ ) { make 4 }
  method level:sym<error> ( $/ ) { make 5 }
  method level:sym<fatal> ( $/ ) { make 6 }
  method level:sym<42>    ( $/ ) { make 1 }
  method level:sym<T>     ( $/ ) { make 1 }
  method level:sym<D>     ( $/ ) { make 2 }
  method level:sym<I>     ( $/ ) { make 3 }
  method level:sym<W>     ( $/ ) { make 4 }
  method level:sym<E>     ( $/ ) { make 5 }
  method level:sym<F>     ( $/ ) { make 6 }
  method level:sym<1>     ( $/ ) { make 1 }
  method level:sym<2>     ( $/ ) { make 2 }
  method level:sym<3>     ( $/ ) { make 3 }
  method level:sym<4>     ( $/ ) { make 4 }
  method level:sym<5>     ( $/ ) { make 5 }
  method level:sym<6>     ( $/ ) { make 6 }
  method level:sym<🦋>     ( $/ ) { make 3 }
  method level:sym<✗>     ( $/ ) { make 5 }

}
