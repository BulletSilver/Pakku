use Pakku::DepSpec;

role Pakku::Grammar::Common {

  proto token add { * }
  token add:sym<add> { <sym> }
  token add:sym<a>   { <sym> }
  token add:sym<↓>   { <sym>  }

  proto token remove { * }
  token remove:sym<remove> { <sym> }
  token remove:sym<r>      { <sym> }
  token remove:sym<↑>      { <sym> }

  proto token check { * }
  token check:sym<check> { <sym> }
  token check:sym<c>     { <sym> }


  proto token list { * }
  token list:sym<list> { <sym> }
  token list:sym<l>    { <sym> }
  token list:sym<↪>    { <sym> }

  proto token help { * }
  token help:sym<help> { <sym> }
  token help:sym<h>    { <sym> }
  token help:sym<ℍ>    { <sym> }
  token help:sym<?>    { <sym> }
  token help:sym<❓>    { <sym> }


  proto token pakkuopt { * }
  token pakkuopt:sym<update>  { <update>   }
  token pakkuopt:sym<pretty>  { <pretty> }
  token pakkuopt:sym<please>  { <sym>    }
  token pakkuopt:sym<dont>    { <sym>    }
  token pakkuopt:sym<verbose> { <verbose> <.space>* <level> }

  proto token addopt { * }
  token addopt:sym<deps-req>  { <deps> <.space>* <require>   }
  token addopt:sym<deps-rec>  { <deps> <.space>* <recommend> }
  token addopt:sym<deps-only> { <deps> <.space>* <only>      }
  token addopt:sym<deps>      { <deps>                       }
  token addopt:sym<nodeps>    { <nodeps>                     }
  token addopt:sym<build>     { <build> }
  token addopt:sym<test>      { <test>  }
  token addopt:sym<force>     { <force> }
  token addopt:sym<into>      { <into> <.space>* <compunit-repo> }

  proto token buildopt { * }

  proto token testopt { * }

  proto token checkopt { * }

  proto token removeopt { * }
  token removeopt:sym<from> { <from> <.space>* <compunit-repo> }


  proto token listopt { * }
  token listopt:sym<local>   { <local> }
  token listopt:sym<remote>  { <remote> }
  token listopt:sym<details> { <details> }
  token listopt:sym<repo>    { <repo> <.space>* <compunit-repo> }


  proto token update { * }
  token update:sym<update>   { <sym> }
  token update:sym<u>        { <sym> }
  token update:sym<⟳>        { <sym> }
  token update:sym<⌃>        { <sym> }
  token update:sym<noupdate> { <sym> }
  token update:sym<nu>       { <sym> }

  proto token pretty { * }
  token pretty:sym<pretty>   { <sym> }
  token pretty:sym<p>        { <sym> }
  token pretty:sym<ℙ>        { <sym> }
  token pretty:sym<℘>        { <sym> }
  token pretty:sym<𝛒>        { <sym> }
  token pretty:sym<nopretty> { <sym> }
  token pretty:sym<np>       { <sym> }

  proto token repo { * }
  token repo:sym<repo> { <sym> }

  proto token verbose { * }
  token verbose:sym<verbose> { <sym> }
  token verbose:sym<v>       { <sym> }
  token verbose:sym<𝕧>       { <sym> }
  token verbose:sym<👀>      { <sym> }
  token verbose:sym<👓>      { <sym> }


  proto token deps { * }
  token deps:sym<deps>   { <sym> }
  token deps:sym<d>      { <sym> }
  token deps:sym<🔗>      { <sym> }

  proto token nodeps { * }
  token nodeps:sym<nodeps> { <sym> }
  token nodeps:sym<nd>     { <sym> }

  proto token require { * }
  token require:sym<require> { <sym> }
  token require:sym<req>     { <sym> }

  proto token recommend { * }
  token recommend:sym<recommend> { <sym> }
  token recommend:sym<rec>       { <sym> }

  proto token only { * }
  token only:sym<only>   { <sym> }
  token only:sym<o>      { <sym> }

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
  token force:sym<𝙁>       { <sym> }
  token force:sym<🔨>      { <sym> }
  token force:sym<➟>       { <sym> }
  token force:sym<noforce> { <sym> }
  token force:sym<nf>      { <sym> }

  proto token into { * }
  token into:sym<into> { <sym> }

  proto token from { * }
  token from:sym<from> { <sym> }

  proto token remote { * }
  token remote:sym<remote>   { <sym> }
  token remote:sym<r>        { <sym> }
  token remote:sym<🌎>       { <sym> }
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

  proto token compunit-repo { * }
  token compunit-repo:sym<repo-name>   { <repo-name> }
  token compunit-repo:sym<repo-inst>   { <repo-inst> }

  proto token repo-name { * }
  token repo-name:sym<home>   { <sym> }
  token repo-name:sym<site>   { <sym> }
  token repo-name:sym<vendor> { <sym> }
  token repo-name:sym<core>   { <sym> }

  token repo-inst   { <path> }

  proto token level { * }
  token level:sym<SILENT> { <sym> }
  token level:sym<TRACE>  { <sym> }
  token level:sym<DEBUG>  { <sym> }
  token level:sym<INFO>   { <sym> }
  token level:sym<WARN>   { <sym> }
  token level:sym<ERROR>  { <sym> }
  token level:sym<FATAL>  { <sym> }
  token level:sym<silent> { <sym> }
  token level:sym<trace>  { <sym> }
  token level:sym<debug>  { <sym> }
  token level:sym<info>   { <sym> }
  token level:sym<warn>   { <sym> }
  token level:sym<error>  { <sym> }
  token level:sym<fatal>  { <sym> }
  token level:sym<S>      { <sym> }
  token level:sym<T>      { <sym> }
  token level:sym<D>      { <sym> }
  token level:sym<I>      { <sym> }
  token level:sym<W>      { <sym> }
  token level:sym<E>      { <sym> }
  token level:sym<F>      { <sym> }
  token level:sym<0>      { <sym> }
  token level:sym<1>      { <sym> }
  token level:sym<2>      { <sym> }
  token level:sym<3>      { <sym> }
  token level:sym<4>      { <sym> }
  token level:sym<5>      { <sym> }
  token level:sym<6>      { <sym> }
  token level:sym<42>     { <sym> }
  token level:sym<🦋>     { <sym> }
  token level:sym<✗>      { <sym> }


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

  token anything { .* }

  token lt  { '<' }
  token gt  { '>' }
}

role Pakku::Grammar::Common::Actions {

  method pakkuopt:sym<update>  ( $/ ) { make $<update>.made }
  method pakkuopt:sym<pretty>  ( $/ ) { make $<pretty>.made }
  method pakkuopt:sym<please>  ( $/ ) { make ( :please )   }
  method pakkuopt:sym<dont>    ( $/ ) { make ( :dont )   }
  method pakkuopt:sym<verbose> ( $/ ) { make ( verbose => $<level>.made ) }

  method addopt:sym<deps-req>  ( $/ ) { make ( :deps<requires>   ) }
  method addopt:sym<deps-rec>  ( $/ ) { make ( :deps<recommends> ) }
  method addopt:sym<deps>      ( $/ ) { make ( :deps<recommends> ) }
  method addopt:sym<deps-only> ( $/ ) { make ( :deps<only> ) }
  method addopt:sym<nodeps>    ( $/ ) { make ( :!deps )            }
  method addopt:sym<build>     ( $/ ) { make $<build>.made }
  method addopt:sym<test>      ( $/ ) { make $<test>.made  }
  method addopt:sym<force>     ( $/ ) { make $<force>.made }

  method addopt:sym<into>  ( $/ ) {

    my $into = $<compunit-repo>.made;

    my $core = CompUnit::RepositoryRegistry.repository-for-name: 'core';

    $*REPO.next-repo = $into;
    $into.next-repo  = $core;

    make ~$<into> => $into;

  }


  method removeopt:sym<from> ( $/ ) {

    my $from = $<compunit-repo>.made;

    $from.next-repo = Nil;

    $*REPO.next-repo = $from;

    make ~$<from> => $from;
  }


  method listopt:sym<remote>  ( $/ ) { make $<remote>.made }
  method listopt:sym<local>   ( $/ ) { make $<local>.made  }
  method listopt:sym<details> ( $/ ) { make $<details>.made   }

  method listopt:sym<repo> ( $/ ) {

    my $repo = $<compunit-repo>.made;

    $repo.next-repo = Nil;

    $*REPO.next-repo = $repo;

    make ~$<repo> => $repo;
  }


  method update:sym<update>   ( $/ )  { make ( :update  ) }
  method update:sym<u>        ( $/ )  { make ( :update  ) }
  method update:sym<⟳>        ( $/ )  { make ( :update  ) }
  method update:sym<⌃>        ( $/ )  { make ( :update  ) }
  method update:sym<noupdate> ( $/ )  { make ( :!update ) }
  method update:sym<nu>       ( $/ )  { make ( :!update ) }

  method pretty:sym<pretty>   ( $/ )  { make ( :pretty  ) }
  method pretty:sym<p>        ( $/ )  { make ( :pretty  ) }
  method pretty:sym<ℙ>        ( $/ )  { make ( :pretty  ) }
  method pretty:sym<𝛒>        ( $/ )  { make ( :pretty  ) }
  method pretty:sym<℘>        ( $/ )  { make ( :pretty  ) }
  method pretty:sym<nopretty> ( $/ )  { make ( :!pretty ) }
  method pretty:sym<np>       ( $/ )  { make ( :!pretty ) }

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
  method force:sym<𝙁>       ( $/ )  { make ( :force  ) }
  method force:sym<🔨>       ( $/ )  { make ( :force  ) }
  method force:sym<➟>       ( $/ )  { make ( :force  ) }
  method force:sym<noforce> ( $/ )  { make ( :!force ) }
  method force:sym<nf>      ( $/ )  { make ( :!force ) }

  method remote:sym<remote>   ( $/ )  { make ( :remote  ) }
  method remote:sym<r>        ( $/ )  { make ( :remote  ) }
  method remote:sym<🌎>        ( $/ )  { make ( :remote  ) }
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

  method compunit-repo:sym<repo-name> ( $/ ) {
    make CompUnit::RepositoryRegistry.repository-for-name: $<repo-name>.Str
  }

  method compunit-repo:sym<repo-inst> ( $/ ) {

    my $prefix = $<repo-inst>.IO;

    my $repo = CompUnit::Repository::Installation.new: :$prefix;

    CompUnit::RepositoryRegistry.register-name(  $prefix.basename, $repo );

    make $repo;

  }

  method level:sym<SILENT> ( $/ ) { make 0 }
  method level:sym<TRACE>  ( $/ ) { make 1 }
  method level:sym<DEBUG>  ( $/ ) { make 2 }
  method level:sym<INFO>   ( $/ ) { make 3 }
  method level:sym<WARN>   ( $/ ) { make 4 }
  method level:sym<ERROR>  ( $/ ) { make 5 }
  method level:sym<FATAL>  ( $/ ) { make 6 }
  method level:sym<silent> ( $/ ) { make 0 }
  method level:sym<trace>  ( $/ ) { make 1 }
  method level:sym<debug>  ( $/ ) { make 2 }
  method level:sym<info>   ( $/ ) { make 3 }
  method level:sym<warn>   ( $/ ) { make 4 }
  method level:sym<error>  ( $/ ) { make 5 }
  method level:sym<fatal>  ( $/ ) { make 6 }
  method level:sym<S>      ( $/ ) { make 0 }
  method level:sym<T>      ( $/ ) { make 1 }
  method level:sym<D>      ( $/ ) { make 2 }
  method level:sym<I>      ( $/ ) { make 3 }
  method level:sym<W>      ( $/ ) { make 4 }
  method level:sym<E>      ( $/ ) { make 5 }
  method level:sym<F>      ( $/ ) { make 6 }
  method level:sym<0>      ( $/ ) { make 0 }
  method level:sym<1>      ( $/ ) { make 1 }
  method level:sym<2>      ( $/ ) { make 2 }
  method level:sym<3>      ( $/ ) { make 3 }
  method level:sym<4>      ( $/ ) { make 4 }
  method level:sym<5>      ( $/ ) { make 5 }
  method level:sym<6>      ( $/ ) { make 6 }
  method level:sym<42>     ( $/ ) { make 1 }
  method level:sym<🦋>     ( $/ ) { make 3 }
  method level:sym<✗>      ( $/ ) { make 5 }

  method whats ( $/ ) { make $<what>».made }

  method what:sym<spec> ( $/ ) { make $<spec>.made }
  method what:sym<path> ( $/ ) { make $<path>.made }

  method spec ( $/ ) {

    make Pakku::DepSpec.new: $/.Str;

  }

  method path ( $/ ) { make $/.IO }

}
