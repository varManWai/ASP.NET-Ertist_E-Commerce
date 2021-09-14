<%@ Page Title="Ertist" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ArtworkDisplay.aspx.cs" Inherits="Ertist.Description" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/ArtworkDisplay.css" rel="stylesheet" />
    <%--     <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>--%>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style>
        .activeLink {
            color: black;
            text-decoration: none;
            margin: 10px;
        }

            .activeLink:hover {
                color: #ca3f49;
                text-decoration: none;
            }

/* Banner Design */
    .page-banner{
        height: 400px;
    }

    .page-banner .content{
        background-image: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3)), url(../Image/banner.jpg);
        height: 100%;
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        position: relative;
    }

    .page-banner h3{
        color: white;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    }

        /*span:nth-of-type(1) {
            color: black !important;
        }

        span:nth-of-type(2) {
            background-color: #ca3f49 !important;
        }*/

        /*#MainContent_paging span{
            color:#ca3f49;
        }*/

        #MainContent_paging span element {
            background-color: #ca3f49;
        }
    </style>
    <br />
    <div class="page-banner">
        <div class="content">
            <h3 style="font-size: clamp(26px,3vw,36px); text-align: center; padding-top: 20px; padding-bottom: 30px;">Artwork </h3>
        </div>
    </div>
    <section class="filters-primary">
            <div class="filters-primary-categories">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-6 col-xs-6">
                            <div class="select-primary selected">
                                <span class="title">Medium</span>
                                <span class="checked "><i class="icon icon-ico-check"></i></span>
                                <form action="post">
                                <div class="dropdown bootstrap-select sm_meds" data-t="sm_meds">
                                    <div class="dropdown-menu" role="combobox">
                                        <div class="inner open" role="listbox" aria-expanded="false" tabindex="-1">
                                            <ul class="dropdown-menu inner">
                                                <li>
                                                    <a href="/en/our-artworks" role="option" aria-disabled="false" tabindex="0" aria-selected="false"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">-</span></a>
                                                </li>
                                                <li class="selected active" data-slug="painting" data-name="painting">
                                                            <button type="submit" data-href="/en/painting" data-slug="painting"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Painting</span></button>
                                                        </li>
                                                    <li data-slug="sculpture" data-name="sculpture">
                                                            <button type="submit" data-href="/en/sculpture" data-slug="sculpture"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Sculpture</span></button>
                                                        </li>
                                                    <li data-slug="photography" data-name="photography">
                                                            <button type="submit" data-href="/en/photography" data-slug="photography"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Photography</span></button>
                                                        </li>
                                                    <li data-slug="drawing" data-name="drawing">
                                                            <button type="submit" data-href="/en/drawing" data-slug="drawing"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Drawing</span></button>
                                                        </li>
                                                    <li data-slug="print" data-name="print">
                                                            <button type="submit" data-href="/en/print" data-slug="print"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Print</span></button>
                                                        </li>
                                                    <li data-slug="work-on-paper" data-name="work_on_paper">
                                                            <button type="submit" data-href="/en/work-on-paper" data-slug="work-on-paper"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Work on paper</span></button>
                                                        </li>
                                                    <li data-slug="textile" data-name="textile">
                                                            <button type="submit" data-href="/en/textile" data-slug="textile"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Textile</span></button>
                                                        </li>
                                                    <li data-slug="other-media" data-name="other">
                                                            <button type="submit" data-href="/en/other-media" data-slug="other-media"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Other media</span></button>
                                                        </li>
                                                    <li data-slug="digital" data-name="digital">
                                                            <button type="submit" data-href="/en/digital" data-slug="digital"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Digital</span></button>
                                                        </li>
                                                    
                                            </ul>
                                        </div>
                                    </div>
                                    <button type="button" class="btn dropdown-toggle btn-default" data-toggle="dropdown" role="button" aria-label="Medium">
                                        <div class="filter-option">
                                            <div class="filter-option-inner">
                                                <div class="filter-option-inner-inner">Painting</div>
                                            </div>
                                        </div>
                                        <span class="bs-caret"><span class="caret"></span></span>
                                    </button>
                                </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6">
                            <div class="select-primary not-selected">
                                <span class="title">
                                                                Painting categories
                                </span>
                                <span class="checked hidden"><i class="icon icon-ico-check"></i></span>
                                                                
                                
                                
                                
                                <form action="post">
                                <div class="dropdown bootstrap-select sm_categories" data-t="sm_categories">
                                    <div class="dropdown-menu" role="combobox">
                                        <div class="inner open" role="listbox" aria-expanded="false" tabindex="-1">
                                            <ul class="dropdown-menu inner">
                                                <li>
                                                    <a href="/en/painting" role="option" aria-disabled="false" tabindex="0" aria-selected="false"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">-</span></a>
                                                </li>                                                    <li data-slug="abstraction" data-name="abstract_art">
                                                        <a href="/en/painting/abstraction" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="abstraction"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Abstraction</span></a>
                                                    </li>                                                    <li data-slug="animals" data-name="animals">
                                                        <a href="/en/painting/animals" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="animals"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Animals</span></a>
                                                    </li>                                                    <li data-slug="conceptual" data-name="conceptual">
                                                        <a href="/en/painting/conceptual" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="conceptual"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Conceptual</span></a>
                                                    </li>                                                    <li data-slug="digital-age" data-name="digital">
                                                        <a href="/en/painting/digital-age" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="digital-age"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Digital Age</span></a>
                                                    </li>                                                    <li data-slug="everyday-life" data-name="genre_painting">
                                                        <a href="/en/painting/everyday-life" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="everyday-life"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Everyday Life</span></a>
                                                    </li>                                                    <li data-slug="fantasy" data-name="fantasy">
                                                        <a href="/en/painting/fantasy" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="fantasy"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Fantasy</span></a>
                                                    </li>                                                    <li data-slug="fashion" data-name="fashion">
                                                        <a href="/en/painting/fashion" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="fashion"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Fashion</span></a>
                                                    </li>                                                    <li data-slug="historical-and-political" data-name="historical_political">
                                                        <a href="/en/painting/historical-and-political" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="historical-and-political"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Historical and Political</span></a>
                                                    </li>                                                    <li data-slug="landscape" data-name="landscape">
                                                        <a href="/en/painting/landscape" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="landscape"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Landscape</span></a>
                                                    </li>                                                    <li data-slug="marine" data-name="marine">
                                                        <a href="/en/painting/marine" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="marine"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Marine</span></a>
                                                    </li>                                                    <li data-slug="nature" data-name="nature">
                                                        <a href="/en/painting/nature" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="nature"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Nature</span></a>
                                                    </li>                                                    <li data-slug="nude" data-name="nude">
                                                        <a href="/en/painting/nude" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="nude"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Nude</span></a>
                                                    </li>                                                    <li data-slug="pop-culture" data-name="pop_culture">
                                                        <a href="/en/painting/pop-culture" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="pop-culture"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Pop culture</span></a>
                                                    </li>                                                    <li data-slug="portrait" data-name="portrait">
                                                        <a href="/en/painting/portrait" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="portrait"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Portrait</span></a>
                                                    </li>                                                    <li data-slug="provocative" data-name="scandal">
                                                        <a href="/en/painting/provocative" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="provocative"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Provocative</span></a>
                                                    </li>                                                    <li data-slug="religion" data-name="religion">
                                                        <a href="/en/painting/religion" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="religion"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Religion</span></a>
                                                    </li>                                                    <li data-slug="self-portrait" data-name="self_portrait">
                                                        <a href="/en/painting/self-portrait" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="self-portrait"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Self Portrait</span></a>
                                                    </li>                                                    <li data-slug="still-life" data-name="still_life">
                                                        <a href="/en/painting/still-life" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="still-life"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Still Life</span></a>
                                                    </li>                                                    <li data-slug="street-art" data-name="street_art">
                                                        <a href="/en/painting/street-art" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="street-art"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Street Art</span></a>
                                                    </li>                                                    <li data-slug="urban" data-name="urban">
                                                        <a href="/en/painting/urban" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="urban"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Urban</span></a>
                                                    </li>                                                    <li data-slug="vanitas" data-name="vanitas">
                                                        <a href="/en/painting/vanitas" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="vanitas"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Vanitas</span></a>
                                                    </li>                                            </ul>
                                        </div>
                                    </div>
                                    <button type="button" class="btn dropdown-toggle btn-default" data-toggle="dropdown" role="button" aria-label="Painting categories">
                                        <div class="filter-option">
                                            <div class="filter-option-inner">
                                                <div class="filter-option-inner-inner">Painting categories</div>
                                            </div>
                                        </div>
                                        <span class="bs-caret"><span class="caret"></span></span>
                                    </button>
                                </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6">
                            <div class="select-primary not-selected">
                                <span class="title">
                                                                Painting styles
                                </span>
                                <span class="checked hidden"><i class="icon icon-ico-check"></i></span>
                                                                                                
                                
                                
                                
                                
                                
                                <form action="post">
                                <div class="dropdown bootstrap-select sm_styles" data-t="sm_styles">
                                    <div class="dropdown-menu" role="combobox">
                                        <div class="inner open" role="listbox" aria-expanded="false" tabindex="-1">
                                            <ul class="dropdown-menu inner">
                                                <li>
                                                    <a href="/en/painting" role="option" aria-disabled="false" tabindex="0" aria-selected="false"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">-</span></a>
                                                </li>                                                    <li data-slug="aboriginal" data-name="aboriginal_art">
                                                        <a href="/en/painting/aboriginal" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="aboriginal"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Aboriginal</span></a>
                                                    </li>                                                    <li data-slug="abstract" data-name="abstract">
                                                        <a href="/en/painting/abstract" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="abstract"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Abstract</span></a>
                                                    </li>                                                    <li data-slug="comics" data-name="comics">
                                                        <a href="/en/painting/comics" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="comics"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Comics</span></a>
                                                    </li>                                                    <li data-slug="cubism" data-name="cubism">
                                                        <a href="/en/painting/cubism" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="cubism"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Cubism</span></a>
                                                    </li>                                                    <li data-slug="expressionism" data-name="expressionism">
                                                        <a href="/en/painting/expressionism" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="expressionism"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Expressionism</span></a>
                                                    </li>                                                    <li data-slug="fauvism" data-name="fauvism">
                                                        <a href="/en/painting/fauvism" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="fauvism"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Fauvism</span></a>
                                                    </li>                                                    <li data-slug="figurative" data-name="figurative">
                                                        <a href="/en/painting/figurative" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="figurative"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Figurative</span></a>
                                                    </li>                                                    <li data-slug="fine-art" data-name="fine_art">
                                                        <a href="/en/painting/fine-art" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="fine-art"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Fine Art</span></a>
                                                    </li>                                                    <li data-slug="futuristic" data-name="futuristic">
                                                        <a href="/en/painting/futuristic" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="futuristic"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Futuristic</span></a>
                                                    </li>                                                    <li data-slug="geometric" data-name="geometric">
                                                        <a href="/en/painting/geometric" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="geometric"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Geometric</span></a>
                                                    </li>                                                    <li data-slug="impressionism" data-name="impressionism">
                                                        <a href="/en/painting/impressionism" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="impressionism"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Impressionism</span></a>
                                                    </li>                                                    <li data-slug="metaphysical" data-name="metaphysical">
                                                        <a href="/en/painting/metaphysical" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="metaphysical"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Metaphysical</span></a>
                                                    </li>                                                    <li data-slug="minimalism" data-name="minimalism">
                                                        <a href="/en/painting/minimalism" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="minimalism"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Minimalism</span></a>
                                                    </li>                                                    <li data-slug="naïve" data-name="naive">
                                                        <a href="/en/painting/na%C3%AFve" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="naïve"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Naïve</span></a>
                                                    </li>                                                    <li data-slug="oriental" data-name="oriental_art">
                                                        <a href="/en/painting/oriental" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="oriental"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Oriental</span></a>
                                                    </li>                                                    <li data-slug="other" data-name="other">
                                                        <a href="/en/painting/other" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="other"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Other</span></a>
                                                    </li>                                                    <li data-slug="outsider" data-name="art_brut">
                                                        <a href="/en/painting/outsider" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="outsider"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Outsider</span></a>
                                                    </li>                                                    <li data-slug="pop-art" data-name="pop_art">
                                                        <a href="/en/painting/pop-art" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="pop-art"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Pop Art</span></a>
                                                    </li>                                                    <li data-slug="primitivism" data-name="primitivism">
                                                        <a href="/en/painting/primitivism" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="primitivism"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Primitivism</span></a>
                                                    </li>                                                    <li data-slug="realism" data-name="realism">
                                                        <a href="/en/painting/realism" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="realism"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Realism</span></a>
                                                    </li>                                                    <li data-slug="semi-abstract" data-name="semi_abstract">
                                                        <a href="/en/painting/semi-abstract" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="semi-abstract"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Semi - abstract</span></a>
                                                    </li>                                                    <li data-slug="surrealism" data-name="surrealism">
                                                        <a href="/en/painting/surrealism" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="surrealism"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Surrealism</span></a>
                                                    </li>                                                    <li data-slug="symbolic" data-name="symbolic">
                                                        <a href="/en/painting/symbolic" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="symbolic"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Symbolic</span></a>
                                                    </li>                                                    <li data-slug="vintage" data-name="vintage">
                                                        <a href="/en/painting/vintage" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="vintage"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Vintage</span></a>
                                                    </li></ul>
                                        </div>
                                    </div>
                                    <button type="button" class="btn dropdown-toggle btn-default" data-toggle="dropdown" role="button" aria-label="Painting styles">
                                        <div class="filter-option">
                                            <div class="filter-option-inner">
                                                <div class="filter-option-inner-inner">Painting styles</div>
                                            </div>
                                        </div>
                                        <span class="bs-caret"><span class="caret"></span></span>
                                    </button>
                                </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6">
                            <div class="select-primary not-selected">
                                <span class="title">
                                                                Painting techniques
                                </span>
                                <span class="checked hidden"><i class="icon icon-ico-check"></i></span>
                                                                
                                
                                
                                
                                <form action="post">
                                <div class="dropdown bootstrap-select sm_materials" data-t="sm_materials">
                                    <div class="dropdown-menu" role="combobox">
                                        <div class="inner open" role="listbox" aria-expanded="false" tabindex="-1">
                                            <ul class="dropdown-menu inner">
                                                <li>
                                                    <a href="/en/painting" role="option" aria-disabled="false" tabindex="0" aria-selected="false"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">-</span></a>
                                                </li>                                                    <li data-slug="acrylic" data-name="acrylic">
                                                        <a href="/en/painting/acrylic" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="acrylic"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Acrylic</span></a>
                                                    </li>                                                    <li data-slug="cement" data-name="cement">
                                                        <a href="/en/painting/cement" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="cement"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Cement</span></a>
                                                    </li>                                                    <li data-slug="chalk" data-name="chalk">
                                                        <a href="/en/painting/chalk" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="chalk"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Chalk</span></a>
                                                    </li>                                                    <li data-slug="charcoal" data-name="charcoal">
                                                        <a href="/en/painting/charcoal" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="charcoal"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Charcoal</span></a>
                                                    </li>                                                    <li data-slug="collage" data-name="collage">
                                                        <a href="/en/painting/collage" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="collage"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Collage</span></a>
                                                    </li>                                                    <li data-slug="colored-pencil" data-name="colored_pencil">
                                                        <a href="/en/painting/colored-pencil" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="colored-pencil"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Colored pencil</span></a>
                                                    </li>                                                    <li data-slug="cotton" data-name="cotton">
                                                        <a href="/en/painting/cotton" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="cotton"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Cotton</span></a>
                                                    </li>                                                    <li data-slug="earth" data-name="earth">
                                                        <a href="/en/painting/earth" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="earth"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Earth</span></a>
                                                    </li>                                                    <li data-slug="embroidery" data-name="embroidery">
                                                        <a href="/en/painting/embroidery" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="embroidery"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Embroidery</span></a>
                                                    </li>                                                    <li data-slug="enamel" data-name="enamel">
                                                        <a href="/en/painting/enamel" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="enamel"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Enamel</span></a>
                                                    </li>                                                    <li data-slug="engraving" data-name="gravure">
                                                        <a href="/en/painting/engraving" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="engraving"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Engraving</span></a>
                                                    </li>                                                    <li data-slug="felt" data-name="felt">
                                                        <a href="/en/painting/felt" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="felt"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Felt</span></a>
                                                    </li>                                                    <li data-slug="gilding" data-name="gilding">
                                                        <a href="/en/painting/gilding" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="gilding"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Gilding</span></a>
                                                    </li>                                                    <li data-slug="gouache" data-name="gouache">
                                                        <a href="/en/painting/gouache" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="gouache"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Gouache</span></a>
                                                    </li>                                                    <li data-slug="graffiti" data-name="graffiti">
                                                        <a href="/en/painting/graffiti" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="graffiti"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Graffiti</span></a>
                                                    </li>                                                    <li data-slug="graphite" data-name="graphite">
                                                        <a href="/en/painting/graphite" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="graphite"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Graphite</span></a>
                                                    </li>                                                    <li data-slug="india-ink" data-name="india_ink">
                                                        <a href="/en/painting/india-ink" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="india-ink"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">India ink</span></a>
                                                    </li>                                                    <li data-slug="ink" data-name="ink">
                                                        <a href="/en/painting/ink" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="ink"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Ink</span></a>
                                                    </li>                                                    <li data-slug="lacquer" data-name="lack">
                                                        <a href="/en/painting/lacquer" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="lacquer"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Lacquer</span></a>
                                                    </li>                                                    <li data-slug="leather" data-name="leather">
                                                        <a href="/en/painting/leather" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="leather"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Leather</span></a>
                                                    </li>                                                    <li data-slug="lithography" data-name="lithography">
                                                        <a href="/en/painting/lithography" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="lithography"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Lithography</span></a>
                                                    </li>                                                    <li data-slug="objects" data-name="objects">
                                                        <a href="/en/painting/objects" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="objects"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Objects</span></a>
                                                    </li>                                                    <li data-slug="oil" data-name="oil">
                                                        <a href="/en/painting/oil" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="oil"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Oil</span></a>
                                                    </li>                                                    <li data-slug="oil-pastel" data-name="oil_pastel">
                                                        <a href="/en/painting/oil-pastel" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="oil-pastel"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Oil pastel</span></a>
                                                    </li>                                                    <li data-slug="pastel" data-name="pastel">
                                                        <a href="/en/painting/pastel" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="pastel"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Pastel</span></a>
                                                    </li>                                                    <li data-slug="pearl" data-name="pearl">
                                                        <a href="/en/painting/pearl" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="pearl"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Pearl</span></a>
                                                    </li>                                                    <li data-slug="pen" data-name="pen">
                                                        <a href="/en/painting/pen" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="pen"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Pen</span></a>
                                                    </li>                                                    <li data-slug="pencil" data-name="pencil">
                                                        <a href="/en/painting/pencil" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="pencil"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Pencil</span></a>
                                                    </li>                                                    <li data-slug="pigments" data-name="pigments">
                                                        <a href="/en/painting/pigments" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="pigments"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Pigments</span></a>
                                                    </li>                                                    <li data-slug="plaster" data-name="plaster">
                                                        <a href="/en/painting/plaster" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="plaster"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Plaster</span></a>
                                                    </li>                                                    <li data-slug="relief-printing" data-name="relief_printing">
                                                        <a href="/en/painting/relief-printing" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="relief-printing"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Relief Printing</span></a>
                                                    </li>                                                    <li data-slug="resin" data-name="resin">
                                                        <a href="/en/painting/resin" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="resin"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Resin</span></a>
                                                    </li>                                                    <li data-slug="sand" data-name="sand">
                                                        <a href="/en/painting/sand" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="sand"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Sand</span></a>
                                                    </li>                                                    <li data-slug="screen-printing" data-name="silk_screen_printing">
                                                        <a href="/en/painting/screen-printing" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="screen-printing"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Screen printing</span></a>
                                                    </li>                                                    <li data-slug="spray-paint" data-name="spray">
                                                        <a href="/en/painting/spray-paint" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="spray-paint"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Spray paint</span></a>
                                                    </li>                                                    <li data-slug="staining" data-name="staining">
                                                        <a href="/en/painting/staining" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="staining"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Staining</span></a>
                                                    </li>                                                    <li data-slug="tape" data-name="tape">
                                                        <a href="/en/painting/tape" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="tape"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Tape</span></a>
                                                    </li>                                                    <li data-slug="tar" data-name="tar">
                                                        <a href="/en/painting/tar" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="tar"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Tar</span></a>
                                                    </li>                                                    <li data-slug="tempera" data-name="tempera">
                                                        <a href="/en/painting/tempera" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="tempera"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Tempera</span></a>
                                                    </li>                                                    <li data-slug="vinyl" data-name="vinyl">
                                                        <a href="/en/painting/vinyl" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="vinyl"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Vinyl</span></a>
                                                    </li>                                                    <li data-slug="watercolor" data-name="watercolor">
                                                        <a href="/en/painting/watercolor" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="watercolor"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Watercolor</span></a>
                                                    </li>                                                    <li data-slug="wax" data-name="wax">
                                                        <a href="/en/painting/wax" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="wax"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Wax</span></a>
                                                    </li>                                                    <li data-slug="wool" data-name="wool">
                                                        <a href="/en/painting/wool" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="wool"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Wool</span></a>
                                                    </li>                                                    <li data-slug="zinc" data-name="zinc">
                                                        <a href="/en/painting/zinc" role="option" aria-disabled="false" tabindex="0" aria-selected="true" data-slug="zinc"><span class="glyphicon glyphicon-ok check-mark"></span><span class="text">Zinc</span></a>
                                                    </li>                                            </ul>
                                        </div>
                                    </div>
                                    <button type="button" class="btn dropdown-toggle btn-default" data-toggle="dropdown" role="button" aria-label="Painting techniques">
                                        <div class="filter-option">
                                            <div class="filter-option-inner">
                                                <div class="filter-option-inner-inner">Painting techniques</div>
                                            </div>
                                        </div>
                                        <span class="bs-caret"><span class="caret"></span></span>
                                    </button>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="filters-primary-my-search hidden">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="title">My search</div>
                            <div class="search-bar hidden">
                                <div class="bootstrap-tagsinput"><input type="text" placeholder=""></div><input type="text" autocomplete="off" class="ac-tags" style="display: none;">
                                <button class="submit-search" type="submit"><i class="icon icon-ico-search"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    <div style="width: 100%; max-width: 1366px; margin: auto; padding: 0px 20px;">
        <div class="row">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="col-md-3 col-sm-6">
                        <div class="product-grid4">
                            <div class="product-image4">
                                <a href="#">
                                    <img class="pic-1" style="height: 300px;" src="<%# GetImage(Eval("picture")) %>" />
                                </a>
                                <ul class="social">
                                    <%--<li><a href="#" data-tip="Quick View"><i class="fa fa-eye"></i></a></li>--%>
                                    <li><a href="Description.aspx?artworkID=<%# DataBinder.Eval(Container.DataItem, "artworkID") %>" data-tip="Quick View"><i class="fa fa-eye"></i></a></li>
                                </ul>
                            </div>
                            <div class="product-content">
                                <h3 class="title">
                                    <asp:Label ID="lblName" runat="server"><%# Eval("name") %></asp:Label>
                                </h3>
                                <%-- <p style="color: gray; font-size:14px;">
                        <i><asp:Label ID="lblType" runat="server" Text='<%# Eval("description") %>'></asp:Label></i>
                    </p><br />--%>
                                <div class="price">
                                    <asp:Label ID="lblPrice" runat="server">$ <%# Eval("price") %></asp:Label>
                                </div>
                                <div class="size">
<p>Dimensions:                      <asp:Label ID="lblHeight" runat="server"><%# Eval("height") %></asp:Label>cm (H) x <asp:Label ID="lblWidth" runat="server"><%# Eval("width") %></asp:Label>cm (W)</p><br />                                </div>
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div id="paging" style="margin-left: 5px; font-size: 0.4cm; font-weight: bold; color: #ca3f49; padding: 15px; border-radius: 3px; text-align: center;" runat="server"></div>
    </div>
</asp:Content>
