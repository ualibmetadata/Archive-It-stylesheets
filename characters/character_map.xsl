<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE xsl:stylesheet [
    <!ENTITY % character_entities SYSTEM "../characters/character_entities.dtd">
    %character_entities;
]>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="xs xd"
    version="2.0">
    
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p>XSLT character map based on character entities DTD by Rick Jelliffe. This
                stylesheet maps a selection of Unicode symbols and special characters to replace entities for web archive metadata.</xd:p>
            <xd:p><xd:b>Created on:</xd:b> Nov 28, 2013</xd:p>
            <xd:p><xd:b>Author:</xd:b> Mariana Paredes-Olea, Bibloiographic Services, University of
                Alberta Libraries</xd:p>
            <xd:p><xd:b>Revisions:</xd:b></xd:p>
            <xd:ul>
                <xd:li></xd:li>
            </xd:ul>
        </xd:desc>
    </xd:doc>
    
    <xsl:character-map name="entities">
        <xsl:output-character character="&num;" string="#"   /> <!--number sign-->
        <xsl:output-character character="&dollar;" string="$"   /> <!--dollar sign-->
        <xsl:output-character character="&percnt;" string="%"   /> <!--percent sign-->
        <xsl:output-character character="&plus;" string="+"   /> <!--plus sign B:-->
        <xsl:output-character character="&pound;" string="£"   /> <!--pound sign-->
        <xsl:output-character character="&deg;" string="°"   /> <!--degree sign-->
        <xsl:output-character character="&frac34;" string="¾"   /> <!--fraction three-quarters-->
        <xsl:output-character character="&Aacute;" string="Á"   /> <!-- capital A, acute accent -->
        <xsl:output-character character="&Acirc;" string="Â"   /> <!-- capital A, circumflex accent -->
        <xsl:output-character character="&Auml;" string="Ä"   /> <!-- capital A, dieresis or umlaut mark -->
        <xsl:output-character character="&AElig;" string="Æ"   /> <!-- capital AE diphthong (ligature) -->
        <xsl:output-character character="&Eacute;" string="É"   /> <!-- capital E, acute accent -->
        <xsl:output-character character="&Euml;" string="Ë"   /> <!-- capital E, dieresis or umlaut mark -->
        <xsl:output-character character="&Icirc;" string="Î"   /> <!-- capital I, circumflex accent -->
        <xsl:output-character character="&Iuml;" string="Ï"   /> <!-- capital I, dieresis or umlaut mark -->
        <xsl:output-character character="&Oacute;" string="Ó"   /> <!-- capital O, acute accent -->
        <xsl:output-character character="&agrave;" string="à"   /> <!-- small a, grave accent -->
        <xsl:output-character character="&aacute;" string="á"   /> <!-- small a, acute accent -->
        <xsl:output-character character="&acirc;" string="â"   /> <!-- small a, circumflex accent -->
        <xsl:output-character character="&atilde;" string="ã"   /> <!-- small a, tilde -->
        <xsl:output-character character="&auml;" string="ä"   /> <!-- small a, dieresis or umlaut mark -->
        <xsl:output-character character="&aelig;" string="æ"   /> <!-- small ae diphthong (ligature) -->
        <xsl:output-character character="&ccedil;" string="ç"   /> <!-- small c, cedilla -->
        <xsl:output-character character="&egrave;" string="è"   /> <!-- small e, grave accent -->
        <xsl:output-character character="&eacute;" string="é"   /> <!-- small e, acute accent -->
        <xsl:output-character character="&#233;" string="é"   />
        <xsl:output-character character="&ecirc;" string="ê"   /> <!-- small e, circumflex accent -->
        <xsl:output-character character="&euml;" string="ë"   /> <!-- small e, dieresis or umlaut mark -->
        <xsl:output-character character="&iacute;" string="í"   /> <!-- small i, acute accent -->
        <xsl:output-character character="&iuml;" string="ï"   /> <!-- small i, dieresis or umlaut mark -->
        <xsl:output-character character="&ntilde;" string="ñ"   /> <!-- small n, tilde -->
        <xsl:output-character character="&oacute;" string="ó"   /> <!-- small o, acute accent -->
        <xsl:output-character character="&ocirc;" string="ô"   /> <!-- small o, circumflex accent -->
        <xsl:output-character character="&ouml;" string="ö"   /> <!-- small o, dieresis or umlaut mark -->
        <xsl:output-character character="&oslash;" string="ø"   /> <!-- small o, slash -->
        <xsl:output-character character="&uuml;" string="ü"   /> <!-- small u, dieresis or umlaut mark -->
        <xsl:output-character character="&yuml;" string="ÿ"   /> <!-- small y, dieresis or umlaut mark -->
        <xsl:output-character character="&inodot;" string="ı"   /> <!--small i without dot &#x131; &#305;-->
        <xsl:output-character character="&ncaron;" string="ň"   /> <!--small n, caron-->
        <xsl:output-character character="&OElig;" string="Œ"   /> <!--capital OE ligature-->
        <xsl:output-character character="&oelig;" string="œ"   /> <!--small oe ligature-->
        <xsl:output-character character="&sacute;" string="ś"   /> <!--small s, acute accent-->
        <xsl:output-character character="&dash;" string="‐"   /> <!--hyphen (true graphic)-->
        <xsl:output-character character="&mdash;" string="—"   /> <!--em dash-->
        <xsl:output-character character="&prime;" string="′"   /> <!--/prime prime or minute-->
        <xsl:output-character character="&trade;" string="™"   /> <!--trade mark sign-->
        
        <xsl:output-character character="&acute;" string="´"   /> <!--acute accent-->
        <xsl:output-character character="&breve;" string="˘"   /> <!--breve-->
        <xsl:output-character character="&caron;" string="ˇ"   /> <!--caron-->
        <xsl:output-character character="&cedil;" string="¸"   /> <!--cedilla-->
        <xsl:output-character character="&circ;" string="^"   /> <!--circumflex accent-->
        <xsl:output-character character="&dblac;" string="˝"   /> <!--double acute accent-->
        <xsl:output-character character="&die;" string="¨"   /> <!--dieresis-->
        <xsl:output-character character="&dot;" string="˙"   /> <!--dot above-->
        <xsl:output-character character="&grave;" string="`"   /> <!--grave accent-->
        <xsl:output-character character="&macr;" string="¯"   /> <!--macron-->
        <xsl:output-character character="&ogon;" string="˛;"   /> <!--ogonek-->
        <xsl:output-character character="&ring;" string="˚"   /> <!--ring-->
        <xsl:output-character character="&tilde;" string="˜"   /> <!--tilde-->
        <xsl:output-character character="&uml;" string="¨"   /> <!--umlaut mark-->
        
        <xsl:output-character character="&agr;" string="α"   /> <!--small alpha, Greek, U03B1 -->
        <xsl:output-character character="&Agr;" string="Α"   /> <!--capital Alpha, Greek, U0391 -->
        <xsl:output-character character="&bgr;" string="β"   /> <!--small beta, Greek, U03B2 -->
        <xsl:output-character character="&Bgr;" string="Β"   /> <!--capital Beta, Greek, U0392 -->
        <xsl:output-character character="&ggr;" string="γ"   /> <!--small gamma, Greek, U03B3 -->
        <xsl:output-character character="&Ggr;" string="Γ"   /> <!--capital Gamma, Greek, U0393 -->
        <xsl:output-character character="&dgr;" string="δ"   /> <!--small delta, Greek, U03B4 -->
        <xsl:output-character character="&Dgr;" string="Δ"   /> <!--capital Delta, Greek, U0394 -->
        <xsl:output-character character="&egr;" string="ε"   /> <!--small epsilon, Greek, U03B5 -->
        <xsl:output-character character="&Egr;" string="Ε"   /> <!--capital Epsilon, Greek, U0395 -->
        <xsl:output-character character="&zgr;" string="ζ"   /> <!--small zeta, Greek, U03B6 -->
        <xsl:output-character character="&Zgr;" string="Ζ"   /> <!--capital Zeta, Greek, U0396 -->
        <xsl:output-character character="&eegr;" string="η"   /> <!--small eta, Greek, U03B7 -->
        <xsl:output-character character="&EEgr;" string="Η"   /> <!--capital Eta, Greek, U0397 -->
        <xsl:output-character character="&thgr;" string="θ"   /> <!--small theta, Greek, U03B8 -->
        <xsl:output-character character="&THgr;" string="Θ"   /> <!--capital Theta, Greek, U0398 -->
        <xsl:output-character character="&igr;" string="ι"   /> <!--small iota, Greek, U03B9 -->
        <xsl:output-character character="&Igr;" string="Ι"   /> <!--capital Iota, Greek, U0399 -->
        <xsl:output-character character="&kgr;" string="κ"   /> <!--small kappa, Greek, U03BA -->
        <xsl:output-character character="&Kgr;" string="Κ"   /> <!--capital Kappa, Greek, U039A -->
        <xsl:output-character character="&lgr;" string="λ"   /> <!--small lambda, Greek, U03BB -->
        <xsl:output-character character="&Lgr;" string="Λ"   /> <!--capital Lambda, Greek, U039B -->
        <xsl:output-character character="&mgr;" string="μ"   /> <!--small mu, Greek, U03BC -->
        <xsl:output-character character="&Mgr;" string="Μ"   /> <!--capital Mu, Greek, U039C -->
        <xsl:output-character character="&ngr;" string="ν"   /> <!--small nu, Greek, U03BD -->
        <xsl:output-character character="&Ngr;" string="Ν"   /> <!--capital Nu, Greek, U039D -->
        <xsl:output-character character="&xgr;" string="ξ"   /> <!--small xi, Greek, U03BE -->
        <xsl:output-character character="&Xgr;" string="Ξ"   /> <!--capital Xi, Greek, U039E -->
        <xsl:output-character character="&ogr;" string="ο"   /> <!--small omicron, Greek, U03BF -->
        <xsl:output-character character="&Ogr;" string="Ο"   /> <!--capital Omicron, Greek, U039F -->
        <xsl:output-character character="&pgr;" string="π"   /> <!--small pi, Greek, U03C0 -->
        <xsl:output-character character="&Pgr;" string="Π"   /> <!--capital Pi, Greek, U03A0 -->
        <xsl:output-character character="&rgr;" string="ρ"   /> <!--small rho, Greek, U03C1 -->
        <xsl:output-character character="&Rgr;" string="Ρ"   /> <!--capital Rho, Greek, U03A1 -->
        <xsl:output-character character="&sfgr;" string="ς"   /> <!--final small sigma, Greek, U03C2 -->
        <xsl:output-character character="&sgr;" string="σ"   /> <!--small sigma, Greek, U03C3 -->
        <xsl:output-character character="&Sgr;" string="Σ"   /> <!--capital Sigma, Greek, U03A3 -->
        <xsl:output-character character="&tgr;" string="τ"   /> <!--small tau, Greek, U03C4 -->
        <xsl:output-character character="&Tgr;" string="Τ"   /> <!--capital Tau, Greek, U03A4 -->
        <xsl:output-character character="&ugr;" string="υ"   /> <!--small upsilon, Greek, U03C5 -->
        <xsl:output-character character="&Ugr;" string="Υ"   /> <!--capital Upsilon, Greek, U03A5 -->
        <xsl:output-character character="&phgr;" string="φ"   /> <!--small phi, Greek, U03C6 -->
        <xsl:output-character character="&PHgr;" string="Φ"   /> <!--capital Phi, Greek, U03A6 -->
        <xsl:output-character character="&khgr;" string="χ"   /> <!--small chi, Greek, U03C7 -->
        <xsl:output-character character="&KHgr;" string="Χ"   /> <!--capital Chi, Greek, U03A7 -->
        <xsl:output-character character="&psgr;" string="ψ"   /> <!--small psi, Greek, U03C8 -->
        <xsl:output-character character="&PSgr;" string="Ψ"   /> <!--capital Psi, Greek, U03A8 -->
        <xsl:output-character character="&ohgr;" string="ω"   /> <!--small omega, Greek, U03C9 -->
        <xsl:output-character character="&OHgr;" string="Ω"   /> <!--capital Omega, Greek, U03A9 -->
        
        <xsl:output-character character="&aacgr;" string="ά"   /> <!--small alpha, accent, Greek-->
        <xsl:output-character character="&Aacgr;" string="Ά"   /> <!--capital Alpha, accent, Greek-->
        <xsl:output-character character="&eacgr;" string="έ"   /> <!--small epsilon, accent, Greek-->
        <xsl:output-character character="&Eacgr;" string="Έ"   /> <!--capital Epsilon, accent, Greek-->
        <xsl:output-character character="&eeacgr;" string="ή"   /> <!--small eta, accent, Greek-->
        <xsl:output-character character="&EEacgr;" string="Ή"   /> <!--capital Eta, accent, Greek-->
        <xsl:output-character character="&idigr;" string="ϊ"   /> <!--small iota, dieresis, Greek-->
        <xsl:output-character character="&Idigr;" string="Ϊ"   /> <!--capital Iota, dieresis, Greek-->
        <xsl:output-character character="&iacgr;" string="ί"   /> <!--small iota, accent, Greek-->
        <xsl:output-character character="&Iacgr;" string="Ί"   /> <!--capital Iota, accent, Greek-->
        <xsl:output-character character="&idiagr;" string="ΐ"   /> <!--small iota, dieresis, accent, Greek-->
        <xsl:output-character character="&oacgr;" string="ό"   /> <!--small omicron, accent, Greek-->
        <xsl:output-character character="&Oacgr;" string="Ό"   /> <!--capital Omicron, accent, Greek-->
        <xsl:output-character character="&udigr;" string="ϋ"   /> <!--small upsilon, dieresis, Greek-->
        <xsl:output-character character="&Udigr;" string="Ϋ"   /> <!--capital Upsilon, dieresis, Greek-->
        <xsl:output-character character="&uacgr;" string="ύ"   /> <!--small upsilon, accent, Greek-->
        <xsl:output-character character="&Uacgr;" string="Ύ"   /> <!--capital Upsilon, accent, Greek-->
        <xsl:output-character character="&udiagr;" string="ΰ"   /> <!--small upsilon, dieresis, accent, = Greek-->
        <xsl:output-character character="&Udiagr;" string="Ϋ̍"   /> <!--capital Upsilon, dieresis, = accent, Greek-->
        <xsl:output-character character="&ohacgr;" string="ώ"   /> <!--small omega, accent, Greek-->
        <xsl:output-character character="&OHacgr;" string="Ώ"   /> <!--capital Omega, accent, Greek-->
        
        <xsl:output-character character="&alpha;" string="α"   /> <!--small alpha, Greek-->
        <xsl:output-character character="&beta;" string="β"   /> <!--small beta, Greek-->
        <xsl:output-character character="&gamma;" string="γ"   /> <!--small gamma, Greek-->
        <xsl:output-character character="&Gamma;" string="Γ"   /> <!--capital Gamma, Greek-->
        <xsl:output-character character="&gammad;" string="Ϝ"   /> <!--/digamma-->
        <xsl:output-character character="&delta;" string="δ"   /> <!--small delta, Greek-->
        <xsl:output-character character="&Delta;" string="Δ"   /> <!--capital Delta, Greek-->
        <xsl:output-character character="&epsi;" string="ε"   /> <!--small epsilon, Greek -->
        <xsl:output-character character="&epsiv;" string="ε"   /> <!--/varepsilon ?-->
        <xsl:output-character character="&epsis;" string="ϵ"   /> <!--/straightepsilon ?-->
        <xsl:output-character character="&zeta;" string="ζ"   /> <!--small zeta, Greek-->
        <xsl:output-character character="&eta;" string="η"   /> <!--small eta, Greek-->
        <xsl:output-character character="&thetas;" string="θ"   /> <!--straight theta-->
        <xsl:output-character character="&Theta;" string="Θ"   /> <!--capital Theta, Greek-->
        <xsl:output-character character="&thetav;" string="ϑ"   /> <!--/vartheta - curly or open theta-->
        <xsl:output-character character="&iota;" string="ι"   /> <!--small iota, Greek-->
        <xsl:output-character character="&kappa;" string="κ"   /> <!--small kappa, Greek-->
        <xsl:output-character character="&kappav;" string="ϰ"   /> <!--/varkappa-->
        <xsl:output-character character="&lambda;" string="λ"   /> <!--small lambda, Greek-->
        <xsl:output-character character="&Lambda;" string="Λ"   /> <!--capital Lambda, Greek-->
        <xsl:output-character character="&mu;" string="μ"   /> <!--small mu, Greek-->
        <xsl:output-character character="&nu;" string="ν"   /> <!--small nu, Greek-->
        <xsl:output-character character="&xi;" string="ξ"   /> <!--small xi, Greek-->
        <xsl:output-character character="&Xi;" string="Ξ"   /> <!--capital Xi, Greek-->
        <xsl:output-character character="&pi;" string="π"   /> <!--small pi, Greek-->
        <xsl:output-character character="&piv;" string="ϖ"   /> <!--/varpi-->
        <xsl:output-character character="&Pi;" string="Π"   /> <!--capital Pi, Greek-->
        <xsl:output-character character="&rho;" string="ρ"   /> <!--small rho, Greek-->
        <xsl:output-character character="&rhov;" string="ϱ"   /> <!--/varrho-->
        <xsl:output-character character="&sigma;" string="σ"   /> <!--small sigma, Greek-->
        <xsl:output-character character="&Sigma;" string="Σ"   /> <!--capital Sigma, Greek-->
        <xsl:output-character character="&sigmav;" string="ς"   /> <!--/varsigma-->
        <xsl:output-character character="&tau;" string="τ"   /> <!--small tau, Greek-->
        <xsl:output-character character="&upsi;" string="υ"   /> <!--small upsilon, Greek-->
        <xsl:output-character character="&Upsi;" string="Υ"   /> <!--capital Upsilon, Greek-->
        <xsl:output-character character="&phis;" string="φ"   /> <!--/straightphi - straight phi-->
        <xsl:output-character character="&Phi;" string="Φ"   /> <!--capital Phi, Greek-->
        <xsl:output-character character="&phiv;" string="ϕ"   /> <!--/varphi - curly or open phi-->
        <xsl:output-character character="&chi;" string="χ"   /> <!--small chi, Greek-->
        <xsl:output-character character="&psi;" string="ψ"   /> <!--small psi, Greek-->
        <xsl:output-character character="&Psi;" string="Ψ"   /> <!--capital Psi, Greek-->
        <xsl:output-character character="&omega;" string="ω"   /> <!--small omega, Greek-->
        <xsl:output-character character="&Omega;" string="Ω"   /> <!--capital Omega, Greek-->
        
        <xsl:output-character character="&b.alpha;" string="α"   /> <!--small alpha, Greek-->
        <xsl:output-character character="&b.beta;" string="β"   /> <!--small beta, Greek-->
        <xsl:output-character character="&b.gamma;" string="γ"   /> <!--small gamma, Greek-->
        <xsl:output-character character="&b.Gamma;" string="Γ"   /> <!--capital Gamma, Greek-->
        <xsl:output-character character="&b.gammad;" string="Ϝ"   /> <!--/digamma-->
        <xsl:output-character character="&b.delta;" string="δ"   /> <!--small delta, Greek-->
        <xsl:output-character character="&b.Delta;" string="Δ"   /> <!--capital Delta, Greek-->
        <xsl:output-character character="&b.epsi;" string="ε"   /> <!--small epsilon, Greek -->
        <xsl:output-character character="&b.epsiv;" string="ε"   /> <!--/varepsilon ?-->
        <xsl:output-character character="&b.epsis;" string="ϵ"   /> <!--/straightepsilon ?-->
        <xsl:output-character character="&b.zeta;" string="ζ"   /> <!--small zeta, Greek-->
        <xsl:output-character character="&b.eta;" string="η"   /> <!--small eta, Greek-->
        <xsl:output-character character="&b.thetas;" string="θ"   /> <!--straight theta-->
        <xsl:output-character character="&b.Theta;" string="Θ"   /> <!--capital Theta, Greek-->
        <xsl:output-character character="&b.thetav;" string="ϑ"   /> <!--/vartheta - curly or open theta-->
        <xsl:output-character character="&b.iota;" string="ι"   /> <!--small iota, Greek-->
        <xsl:output-character character="&b.kappa;" string="κ"   /> <!--small kappa, Greek-->
        <xsl:output-character character="&b.kappav;" string="ϰ"   /> <!--/varkappa-->
        <xsl:output-character character="&b.lambda;" string="λ"   /> <!--small lambda, Greek-->
        <xsl:output-character character="&b.Lambda;" string="Λ"   /> <!--capital Lambda, Greek-->
        <xsl:output-character character="&b.mu;" string="μ"   /> <!--small mu, Greek-->
        <xsl:output-character character="&b.nu;" string="ν"   /> <!--small nu, Greek-->
        <xsl:output-character character="&b.xi;" string="ξ"   /> <!--small xi, Greek-->
        <xsl:output-character character="&b.Xi;" string="Ξ"   /> <!--capital Xi, Greek-->
        <xsl:output-character character="&b.pi;" string="π"   /> <!--small pi, Greek-->
        <xsl:output-character character="&b.piv;" string="ϖ"   /> <!--/varpi-->
        <xsl:output-character character="&b.Pi;" string="Π"   /> <!--capital Pi, Greek-->
        <xsl:output-character character="&b.rho;" string="ρ"   /> <!--small rho, Greek-->
        <xsl:output-character character="&b.rhov;" string="ϱ"   /> <!--/varrho-->
        <xsl:output-character character="&b.sigma;" string="σ"   /> <!--small sigma, Greek-->
        <xsl:output-character character="&b.Sigma;" string="Σ"   /> <!--capital Sigma, Greek-->
        <xsl:output-character character="&b.sigmav;" string="ς"   /> <!--/varsigma-->
        <xsl:output-character character="&b.tau;" string="τ"   /> <!--small tau, Greek-->
        <xsl:output-character character="&b.upsi;" string="υ"   /> <!--small upsilon, Greek-->
        <xsl:output-character character="&b.Upsi;" string="Υ"   /> <!--capital Upsilon, Greek-->
        <xsl:output-character character="&b.phis;" string="φ"   /> <!--/straightphi - straight phi-->
        <xsl:output-character character="&b.Phi;" string="Φ"   /> <!--capital Phi, Greek-->
        <xsl:output-character character="&b.phiv;" string="ϕ"   /> <!--/varphi - curly or open phi-->
        <xsl:output-character character="&b.chi;" string="χ"   /> <!--small chi, Greek-->
        <xsl:output-character character="&b.psi;" string="ψ"   /> <!--small psi, Greek-->
        <xsl:output-character character="&b.Psi;" string="Ψ"   /> <!--capital Psi, Greek-->
        <xsl:output-character character="&b.omega;" string="ω"   /> <!--small omega, Greek-->
        <xsl:output-character character="&b.Omega;" string="Ω"   /> <!--capital Omega, Greek-->
        
        <xsl:output-character character="&Agrave;" string="À"   /> <!-- capital A, grave accent -->
        <xsl:output-character character="&Aacute;" string="Á"   /> <!-- capital A, acute accent -->
        <xsl:output-character character="&Acirc;" string="Â"   /> <!-- capital A, circumflex accent -->
        <xsl:output-character character="&Atilde;" string="Ã"   /> <!-- capital A, tilde -->
        <xsl:output-character character="&Auml;" string="Ä"   /> <!-- capital A, dieresis or umlaut mark -->
        <xsl:output-character character="&Aring;" string="Å"   /> <!-- capital A, ring -->
        <xsl:output-character character="&AElig;" string="Æ"   /> <!-- capital AE diphthong (ligature) -->
        <xsl:output-character character="&Ccedil;" string="Ç"   /> <!-- capital C, cedilla -->
        <xsl:output-character character="&Egrave;" string="È"   /> <!-- capital E, grave accent -->
        <xsl:output-character character="&Eacute;" string="É"   /> <!-- capital E, acute accent -->
        <xsl:output-character character="&Ecirc;" string="Ê"   /> <!-- capital E, circumflex accent -->
        <xsl:output-character character="&Euml;" string="Ë"   /> <!-- capital E, dieresis or umlaut mark -->
        <xsl:output-character character="&Igrave;" string="Ì"   /> <!-- capital I, grave accent -->
        <xsl:output-character character="&Iacute;" string="Í"   /> <!-- capital I, acute accent -->
        <xsl:output-character character="&Icirc;" string="Î"   /> <!-- capital I, circumflex accent -->
        <xsl:output-character character="&Iuml;" string="Ï"   /> <!-- capital I, dieresis or umlaut mark -->
        <xsl:output-character character="&ETH;" string="Ð"   /> <!-- capital Eth, Icelandic -->
        <xsl:output-character character="&Ntilde;" string="Ñ"   /> <!-- capital N, tilde -->
        <xsl:output-character character="&Ograve;" string="Ò"   /> <!-- capital O, grave accent -->
        <xsl:output-character character="&Oacute;" string="Ó"   /> <!-- capital O, acute accent -->
        <xsl:output-character character="&Ocirc;" string="Ô"   /> <!-- capital O, circumflex accent -->
        <xsl:output-character character="&Otilde;" string="Õ"   /> <!-- capital O, tilde -->
        <xsl:output-character character="&Ouml;" string="Ö"   /> <!-- capital O, dieresis or umlaut mark -->
        <xsl:output-character character="&Oslash;" string="Ø"   /> <!-- capital O, slash -->
        <xsl:output-character character="&Ugrave;" string="Ù"   /> <!-- capital U, grave accent -->
        <xsl:output-character character="&Uacute;" string="Ú"   /> <!-- capital U, acute accent -->
        <xsl:output-character character="&Ucirc;" string="Û"   /> <!-- capital U, circumflex accent -->
        <xsl:output-character character="&Uuml;" string="Ü"   /> <!-- capital U, dieresis or umlaut mark -->
        <xsl:output-character character="&Yacute;" string="Ý"   /> <!-- capital Y, acute accent -->
        <xsl:output-character character="&THORN;" string="Þ"   /> <!-- capital THORN, Icelandic -->
        <xsl:output-character character="&szlig;" string="ß"   /> <!-- small sharp s, German (sz ligature) -->
        <xsl:output-character character="&agrave;" string="à"   /> <!-- small a, grave accent -->
        <xsl:output-character character="&aacute;" string="á"   /> <!-- small a, acute accent -->
        <xsl:output-character character="&acirc;" string="â"   /> <!-- small a, circumflex accent -->
        <xsl:output-character character="&atilde;" string="ã"   /> <!-- small a, tilde -->
        <xsl:output-character character="&auml;" string="ä"   /> <!-- small a, dieresis or umlaut mark -->
        <xsl:output-character character="&aring;" string="å"   /> <!-- small a, ring -->
        <xsl:output-character character="&aelig;" string="æ"   /> <!-- small ae diphthong (ligature) -->
        <xsl:output-character character="&ccedil;" string="ç"   /> <!-- small c, cedilla -->
        <xsl:output-character character="&egrave;" string="è"   /> <!-- small e, grave accent -->
        <xsl:output-character character="&eacute;" string="é"   /> <!-- small e, acute accent -->
        <xsl:output-character character="&ecirc;" string="ê"   /> <!-- small e, circumflex accent -->
        <xsl:output-character character="&euml;" string="ë"   /> <!-- small e, dieresis or umlaut mark -->
        <xsl:output-character character="&igrave;" string="ì"   /> <!-- small i, grave accent -->
        <xsl:output-character character="&iacute;" string="í"   /> <!-- small i, acute accent -->
        <xsl:output-character character="&icirc;" string="î"   /> <!-- small i, circumflex accent -->
        <xsl:output-character character="&iuml;" string="ï"   /> <!-- small i, dieresis or umlaut mark -->
        <xsl:output-character character="&eth;" string="ð"   /> <!-- small eth, Icelandic -->
        <xsl:output-character character="&ntilde;" string="ñ"   /> <!-- small n, tilde -->
        <xsl:output-character character="&ograve;" string="ò"   /> <!-- small o, grave accent -->
        <xsl:output-character character="&oacute;" string="ó"   /> <!-- small o, acute accent -->
        <xsl:output-character character="&ocirc;" string="ô"   /> <!-- small o, circumflex accent -->
        <xsl:output-character character="&otilde;" string="õ"   /> <!-- small o, tilde -->
        <xsl:output-character character="&ouml;" string="ö"   /> <!-- small o, dieresis or umlaut mark -->
        <xsl:output-character character="&oslash;" string="ø"   /> <!-- small o, slash -->
        <xsl:output-character character="&ugrave;" string="ù"   /> <!-- small u, grave accent -->
        <xsl:output-character character="&uacute;" string="ú"   /> <!-- small u, acute accent -->
        <xsl:output-character character="&ucirc;" string="û"   /> <!-- small u, circumflex accent -->
        <xsl:output-character character="&uuml;" string="ü"   /> <!-- small u, dieresis or umlaut mark -->
        <xsl:output-character character="&yacute;" string="ý"   /> <!-- small y, acute accent -->
        <xsl:output-character character="&thorn;" string="þ"   /> <!-- small thorn, Icelandic -->
        <xsl:output-character character="&yuml;" string="ÿ"   /> <!-- small y, dieresis or umlaut mark -->
        
        <xsl:output-character character="&abreve;" string="ă"   /> <!--small a, breve-->
        <xsl:output-character character="&Abreve;" string="Ă"   /> <!--capital A, breve-->
        <xsl:output-character character="&amacr;" string="ā"   /> <!--small a, macron-->
        <xsl:output-character character="&Amacr;" string="Ā"   /> <!--capital A, macron-->
        <xsl:output-character character="&aogon;" string="ą"   /> <!--small a, ogonek-->
        <xsl:output-character character="&Aogon;" string="Ą"   /> <!--capital A, ogonek-->
        <xsl:output-character character="&cacute;" string="ć"   /> <!--small c, acute accent-->
        <xsl:output-character character="&Cacute;" string="Ć"   /> <!--capital C, acute accent-->
        <xsl:output-character character="&ccaron;" string="č"   /> <!--small c, caron-->
        <xsl:output-character character="&Ccaron;" string="Č"   /> <!--capital C, caron-->
        <xsl:output-character character="&ccirc;" string="ĉ"   /> <!--small c, circumflex accent-->
        <xsl:output-character character="&Ccirc;" string="Ĉ"   /> <!--capital C, circumflex accent-->
        <xsl:output-character character="&cdot;" string="ċ"   /> <!--small c, dot above-->
        <xsl:output-character character="&Cdot;" string="Ċ"   /> <!--capital C, dot above-->
        <xsl:output-character character="&dcaron;" string="ď"   /> <!--small d, caron-->
        <xsl:output-character character="&Dcaron;" string="Ď"   /> <!--capital D, caron-->
        <xsl:output-character character="&dstrok;" string="đ"   /> <!--small d, stroke-->
        <xsl:output-character character="&Dstrok;" string="Đ"   /> <!--capital D, stroke-->
        <xsl:output-character character="&ecaron;" string="ě"   /> <!--small e, caron-->
        <xsl:output-character character="&Ecaron;" string="Ě"   /> <!--capital E, caron-->
        <xsl:output-character character="&edot;" string="ė"   /> <!--small e, dot above-->
        <xsl:output-character character="&Edot;" string="Ė"   /> <!--capital E, dot above-->
        <xsl:output-character character="&emacr;" string="ē"   /> <!--small e, macron-->
        <xsl:output-character character="&Emacr;" string="Ē"   /> <!--capital E, macron-->
        <xsl:output-character character="&eogon;" string="ę"   /> <!--small e, ogonek-->
        <xsl:output-character character="&Eogon;" string="Ę"   /> <!--capital E, ogonek-->
        <xsl:output-character character="&gacute;" string="ǵ"   /> <!--small g, acute accent-->
        <xsl:output-character character="&gbreve;" string="ğ"   /> <!--small g, breve-->
        <xsl:output-character character="&Gbreve;" string="Ğ"   /> <!--capital G, breve-->
        <xsl:output-character character="&Gcedil;" string="Ģ"   /> <!--capital G, cedilla-->
        <xsl:output-character character="&gcirc;" string="ĝ"   /> <!--small g, circumflex accent-->
        <xsl:output-character character="&Gcirc;" string="Ĝ"   /> <!--capital G, circumflex accent-->
        <xsl:output-character character="&gdot;" string="ġ"   /> <!--small g, dot above-->
        <xsl:output-character character="&Gdot;" string="Ġ"   /> <!--capital G, dot above-->
        <xsl:output-character character="&hcirc;" string="ĥ"   /> <!--small h, circumflex accent-->
        <xsl:output-character character="&Hcirc;" string="Ĥ"   /> <!--capital H, circumflex accent-->
        <xsl:output-character character="&hstrok;" string="ħ"   /> <!--small h, stroke-->
        <xsl:output-character character="&Hstrok;" string="Ħ"   /> <!--capital H, stroke-->
        <xsl:output-character character="&Idot;" string="İ"   /> <!--capital I, dot above-->
        <xsl:output-character character="&Imacr;" string="Ī"   /> <!--capital I, macron-->
        <xsl:output-character character="&imacr;" string="ī"   /> <!--small i, macron-->
        <xsl:output-character character="&ijlig;" string="ĳ"   /> <!--small ij ligature-->
        <xsl:output-character character="&IJlig;" string="Ĳ"   /> <!--capital IJ ligature-->
        <xsl:output-character character="&inodot;" string="ı"   /> <!--small i without dot-->
        <xsl:output-character character="&iogon;" string="į"   /> <!--small i, ogonek-->
        <xsl:output-character character="&Iogon;" string="Į"   /> <!--capital I, ogonek-->
        <xsl:output-character character="&itilde;" string="ĩ"   /> <!--small i, tilde-->
        <xsl:output-character character="&Itilde;" string="Ĩ"   /> <!--capital I, tilde-->
        <xsl:output-character character="&jcirc;" string="ĵ"   /> <!--small j, circumflex accent-->
        <xsl:output-character character="&Jcirc;" string="Ĵ"   /> <!--capital J, circumflex accent-->
        <xsl:output-character character="&kcedil;" string="ķ"   /> <!--small k, cedilla-->
        <xsl:output-character character="&Kcedil;" string="Ķ"   /> <!--capital K, cedilla-->
        <xsl:output-character character="&kgreen;" string="ĸ"   /> <!--small k, Greenlandic-->
        <xsl:output-character character="&lacute;" string="ĺ"   /> <!--small l, acute accent-->
        <xsl:output-character character="&Lacute;" string="Ĺ"   /> <!--capital L, acute accent-->
        <xsl:output-character character="&lcaron;" string="ľ"   /> <!--small l, caron-->
        <xsl:output-character character="&Lcaron;" string="Ľ"   /> <!--capital L, caron-->
        <xsl:output-character character="&lcedil;" string="ļ"   /> <!--small l, cedilla-->
        <xsl:output-character character="&Lcedil;" string="Ļ"   /> <!--capital L, cedilla-->
        <xsl:output-character character="&lmidot;" string="ŀ"   /> <!--small l, middle dot-->
        <xsl:output-character character="&Lmidot;" string="Ŀ"   /> <!--capital L, middle dot-->
        <xsl:output-character character="&lstrok;" string="ł"   /> <!--small l, stroke-->
        <xsl:output-character character="&Lstrok;" string="Ł"   /> <!--capital L, stroke-->
        <xsl:output-character character="&nacute;" string="ń"   /> <!--small n, acute accent-->
        <xsl:output-character character="&Nacute;" string="Ń"   /> <!--capital N, acute accent-->
        <xsl:output-character character="&eng;" string="ŋ"   /> <!--small eng, Lapp-->
        <xsl:output-character character="&ENG;" string="Ŋ"   /> <!--capital ENG, Lapp-->
        <xsl:output-character character="&napos;" string="ŉ"   /> <!--small n, apostrophe-->
        <xsl:output-character character="&ncaron;" string="ň"   /> <!--small n, caron-->
        <xsl:output-character character="&Ncaron;" string="Ň"   /> <!--capital N, caron-->
        <xsl:output-character character="&ncedil;" string="ņ"   /> <!--small n, cedilla-->
        <xsl:output-character character="&Ncedil;" string="Ņ"   /> <!--capital N, cedilla-->
        <xsl:output-character character="&odblac;" string="ő"   /> <!--small o, double acute accent-->
        <xsl:output-character character="&Odblac;" string="Ő"   /> <!--capital O, double acute accent-->
        <xsl:output-character character="&Omacr;" string="Ō"   /> <!--capital O, macron-->
        <xsl:output-character character="&omacr;" string="ō"   /> <!--small o, macron-->
        <xsl:output-character character="&oelig;" string="œ"   /> <!--small oe ligature-->
        <xsl:output-character character="&OElig;" string="Œ"   /> <!--capital OE ligature-->
        <xsl:output-character character="&racute;" string="ŕ"   /> <!--small r, acute accent-->
        <xsl:output-character character="&Racute;" string="Ŕ"   /> <!--capital R, acute accent-->
        <xsl:output-character character="&rcaron;" string="ř"   /> <!--small r, caron-->
        <xsl:output-character character="&Rcaron;" string="Ř"   /> <!--capital R, caron-->
        <xsl:output-character character="&rcedil;" string="ŗ"   /> <!--small r, cedilla-->
        <xsl:output-character character="&Rcedil;" string="Ŗ"   /> <!--capital R, cedilla-->
        <xsl:output-character character="&sacute;" string="ś"   /> <!--small s, acute accent-->
        <xsl:output-character character="&Sacute;" string="Ř"   /> <!--capital S, acute accent-->
        <xsl:output-character character="&scaron;" string="š"   /> <!--small s, caron-->
        <xsl:output-character character="&Scaron;" string="Š"   /> <!--capital S, caron-->
        <xsl:output-character character="&scedil;" string="ş"   /> <!--small s, cedilla-->
        <xsl:output-character character="&Scedil;" string="Ş"   /> <!--capital S, cedilla-->
        <xsl:output-character character="&scirc;" string="Ŝ"   /> <!--small s, circumflex accent-->
        <xsl:output-character character="&Scirc;" string="ŝ"   /> <!--capital S, circumflex accent-->
        <xsl:output-character character="&tcaron;" string="ť"   /> <!--small t, caron-->
        <xsl:output-character character="&Tcaron;" string="Ť"   /> <!--capital T, caron-->
        <xsl:output-character character="&tcedil;" string="Ţ"   /> <!--small t, cedilla-->
        <xsl:output-character character="&Tcedil;" string="ţ"   /> <!--capital T, cedilla-->
        <xsl:output-character character="&tstrok;" string="ŧ"   /> <!--small t, stroke-->
        <xsl:output-character character="&Tstrok;" string="Ŧ"   /> <!--capital T, stroke-->
        <xsl:output-character character="&ubreve;" string="ŭ"   /> <!--small u, breve-->
        <xsl:output-character character="&Ubreve;" string="Ŭ"   /> <!--capital U, breve-->
        <xsl:output-character character="&udblac;" string="ű"   /> <!--small u, double acute accent-->
        <xsl:output-character character="&Udblac;" string="Ű"   /> <!--capital U, double acute accent-->
        <xsl:output-character character="&umacr;" string="ū"   /> <!--small u, macron-->
        <xsl:output-character character="&Umacr;" string="Ū"   /> <!--capital U, macron-->
        <xsl:output-character character="&uogon;" string="ų"   /> <!--small u, ogonek-->
        <xsl:output-character character="&Uogon;" string="Ų"   /> <!--capital U, ogonek-->
        <xsl:output-character character="&uring;" string="ů"   /> <!--small u, ring-->
        <xsl:output-character character="&Uring;" string="Ů"   /> <!--capital U, ring-->
        <xsl:output-character character="&utilde;" string="ũ"   /> <!--small u, tilde-->
        <xsl:output-character character="&Utilde;" string="Ũ"   /> <!--capital U, tilde-->
        <xsl:output-character character="&wcirc;" string="ŵ"   /> <!--small w, circumflex accent-->
        <xsl:output-character character="&Wcirc;" string="Ŵ"   /> <!--capital W, circumflex accent-->
        <xsl:output-character character="&ycirc;" string="ŷ"   /> <!--small y, circumflex accent-->
        <xsl:output-character character="&Ycirc;" string="Ŷ"   /> <!--capital Y, circumflex accent-->
        <xsl:output-character character="&Yuml;" string="Ÿ"   /> <!--capital Y, dieresis or umlaut mark-->
        <xsl:output-character character="&zacute;" string="ź"   /> <!--small z, acute accent-->
        <xsl:output-character character="&Zacute;" string="Ź"   /> <!--capital Z, acute accent-->
        <xsl:output-character character="&zcaron;" string="ž"   /> <!--small z, caron-->
        <xsl:output-character character="&Zcaron;" string="Ž;"   /> <!--capital Z, caron-->
        <xsl:output-character character="&zdot;" string="ż"   /> <!--small z, dot above-->
        <xsl:output-character character="&Zdot;" string="Ż"   /> <!--capital Z, dot above-->
        
        <xsl:output-character character="&hal;" string="½"   /> <!--fraction one-half-->
        <xsl:output-character character="&frac12;" string="½"   /> <!--fraction one-half-->
        <xsl:output-character character="&frac14;" string="¼"   /> <!--fraction one-quarter-->
        <xsl:output-character character="&frac34;" string="¾"   /> <!--fraction three-quarters-->
        <xsl:output-character character="&frac18;" string="⅛"   /> <!--fraction one-eighth-->     <!-- or;" string="#xB1;&#x202;&#x2044;&#x2088;" --> 
        <xsl:output-character character="&frac38;" string="⅜"   /> <!--fraction three-eighths-->  <!-- or;" string="#xB3;&#x2044;&#x2088;" -->
        <xsl:output-character character="&frac58;" string="⅝"   /> <!--fraction five-eighths-->   <!-- or;" string="#x2075;&#x2044;&#x2088;" -->
        <xsl:output-character character="&frac78;" string="⅞"   /> <!--fraction seven-eighths-->  <!-- or;" string="#x2077;&#x2044;&#x2088;" -->
        
        <xsl:output-character character="&sup1;" string="¹"   /> <!--superscript one-->
        <xsl:output-character character="&sup2;" string="²"   /> <!--superscript two-->
        <xsl:output-character character="&sup3;" string="³"   /> <!--superscript three-->
        
        <xsl:output-character character="&plus;" string="+"   /> <!--plus sign B:-->
        <xsl:output-character character="&plusmn;" string="±"   /> <!--pm B: plus-or-minus sign-->
        <xsl:output-character character="&equals;" string="="   /> <!--equals sign R:-->
        <xsl:output-character character="&gt;" string=">"   /> <!--greater-than sign R:-->
        <xsl:output-character character="&divide;" string="÷"   /> <!--/div B: divide sign-->
        <xsl:output-character character="&times;" string="×"   /> <!--/times B: multiply sign-->
        
        <xsl:output-character character="&curren;" string="¤"   /> <!--general currency sign-->
        <xsl:output-character character="&pound;" string="£"   /> <!--pound sign-->
        <xsl:output-character character="&dollar;" string="$"   /> <!--dollar sign-->
        <xsl:output-character character="&cent;" string="¢"   /> <!--cent sign-->
        <xsl:output-character character="&yen;" string="¥"   /> <!--/yen yen sign-->
        
        <xsl:output-character character="&num;" string="#"   /> <!--number sign-->
        <xsl:output-character character="&percnt;" string="%"   /> <!--percent sign-->
        <xsl:output-character character="&amp;" string="&amp;"/>
        <xsl:output-character character="&ast;" string="*"   /> <!--/ast B: asterisk-->
        <xsl:output-character character="&commat;" string="@"   /> <!--commercial at-->
        <xsl:output-character character="&lsqb;" string="["   /> <!--lbrack O: left square bracket-->
        <xsl:output-character character="&bsol;" string="\"   /> <!--backslash reverse solidus-->
        <xsl:output-character character="&rsqb;" string="]"   /> <!--/rbrack C: right square bracket-->
        <xsl:output-character character="&lcub;" string="{"   /> <!--/lbrace O: left curly bracket-->
        <xsl:output-character character="&horbar;" string="―"   /> <!--horizontal bar-->
        <xsl:output-character character="&verbar;" string="|"   /> <!--/vert vertical bar-->
        <xsl:output-character character="&rcub;" string="}"   /> <!--/rbrace C: right curly bracket-->
        <xsl:output-character character="&micro;" string="µ"   /> <!--micro sign-->
        <xsl:output-character character="&ohm;" string="Ω"   /> <!--ohm sign-->
        <xsl:output-character character="&deg;" string="°"   /> <!--degree sign-->
        <xsl:output-character character="&ordm;" string="º"   /> <!--ordinal indicator, masculine-->
        <xsl:output-character character="&ordf;" string="ª"   /> <!--ordinal indicator, feminine-->
        <xsl:output-character character="&sect;" string="§"   /> <!--section sign-->
        <xsl:output-character character="&para;" string="¶"   /> <!--pilcrow (paragraph sign)-->
        <xsl:output-character character="&middot;" string="·"   /> <!--/centerdot B: middle dot-->
        <xsl:output-character character="&larr;" string="←"   /> <!--/leftarrow /gets A: leftward arrow-->
        <xsl:output-character character="&rarr;" string="→"   /> <!--/rightarrow /to A: rightward arrow-->
        <xsl:output-character character="&uarr;" string="↑"   /> <!--/uparrow A: upward arrow-->
        <xsl:output-character character="&darr;" string="↓"   /> <!--/downarrow A: downward arrow-->
        <xsl:output-character character="&copy;" string="©"   /> <!--copyright sign-->
        <xsl:output-character character="&reg;" string="®"   /> <!--/circledR registered sign-->
        <xsl:output-character character="&trade;" string="™"   /> <!--trade mark sign-->
        <xsl:output-character character="&brvbar;" string="¦"   /> <!--bren (vertical) bar-->
        <xsl:output-character character="&not;" string="¬"   /> <!--/neg /lnot not sign-->
        <xsl:output-character character="&sung;" string="♪"   /> <!--music note (sung text sign)-->
        
        <xsl:output-character character="&excl;" string="!"   /> <!--exclamation mark-->
        <xsl:output-character character="&iexcl;" string="¡"   /> <!--inverted exclamation mark-->
        <xsl:output-character character="&quot;" string="&quot;"   /> <!--/quotation mark-->
        <xsl:output-character character="&apos;" string="'"   /> <!--/apostrophe-->
        <xsl:output-character character="&lpar;" string="("   /> <!--O: left parenthesis-->
        <xsl:output-character character="&rpar;" string=")"   /> <!--C: right parenthesis-->
        <xsl:output-character character="&comma;" string=","   /> <!--P: comma-->
        <xsl:output-character character="&lowbar;" string="_"   /> <!--low line-->
        <xsl:output-character character="&hyphen;" string="‐"   /> <!--hyphen-->
        <xsl:output-character character="&period;" string="."   /> <!--full stop, period-->
        <xsl:output-character character="&sol;" string="/"   /> <!--solidus-->
        <xsl:output-character character="&colon;" string=":"   /> <!--/colon P:-->
        <xsl:output-character character="&semi;" string=";"   /> <!--semicolon P:-->
        <xsl:output-character character="&quest;" string="?"   /> <!--question mark-->
        <xsl:output-character character="&iquest;" string="¿"   /> <!--inverted question mark-->
        <xsl:output-character character="&laquo;" string="‹"   /> <!--angle quotation mark, left   But note = that Unicode 1 & Maler & el Andaloussi give &#xAB; -->
        <xsl:output-character character="&raquo;" string="›"   /> <!--angle quotation mark, right  But note = that Unicode 1 & Maler & el Andaloussi give &#xBB; -->
        <xsl:output-character character="&lsquo;" string="‘"   /> <!--single quotation mark, left-->
        <xsl:output-character character="&rsquo;" string="’"   /> <!--single quotation mark, right-->
        <xsl:output-character character="&#8217;" string="’"   /> <!--single quotation mark, right
            (dec)-->        
        <xsl:output-character character="&ldquo;" string="“"   /> <!--double quotation mark, left-->
        <xsl:output-character character="&rdquo;" string="”"   /> <!--double quotation mark, right -->
        <xsl:output-character character="&rdquo;" string="”"   /> <!--double quotation mark, right-->
        <xsl:output-character character="&nbsp;" string=" "   /> <!--no break (required) space-->
        <xsl:output-character character="&shy;" string="­"   /> <!--soft hyphen-->
        
        <xsl:output-character character="&emsp;" string=" "   /> <!--em space-->
        <xsl:output-character character="&ensp;" string=" "   /> <!--en space (1/2-em)-->
        <xsl:output-character character="&emsp13;" string=" "   /> <!--1/3-em space-->
        <xsl:output-character character="&emsp14;" string=" "   /> <!--1/4-em space-->
        <xsl:output-character character="&numsp;" string=" "   /> <!--digit space (width of a number)-->
        <xsl:output-character character="&puncsp;" string=" "   /> <!--punctuation space (width of comma)-->
        <xsl:output-character character="&thinsp;" string=" "   /> <!--thin space (1/6-em)-->
        <xsl:output-character character="&hairsp;" string=" "   /> <!--hair space-->
        <xsl:output-character character="&mdash;" string="—"   /> <!--em dash-->
        <xsl:output-character character="&ndash;" string="–"   /> <!--en dash-->
        <xsl:output-character character="&#8211;" string="–"   /> <!--en dash-->
        <xsl:output-character character="&dash;" string="‐"   /> <!--hyphen (true graphic)-->
        <xsl:output-character character="&blank;" string="␣"   /> <!--significant blank symbol-->
        <xsl:output-character character="&hellip;" string="…"   /> <!--ellipsis (horizontal)-->
        <xsl:output-character character="&nldr;" string="‥"   /> <!--double baseline dot (en leader)-->
        <xsl:output-character character="&frac13;" string="⅓"   /> <!--fraction one-third-->
        <xsl:output-character character="&frac23;" string="⅔"   /> <!--fraction two-thirds-->
        <xsl:output-character character="&frac15;" string="⅕"   /> <!--fraction one-fifth-->
        <xsl:output-character character="&frac25;" string="⅖"   /> <!--fraction two-fifths-->
        <xsl:output-character character="&frac35;" string="⅗"   /> <!--fraction three-fifths-->
        <xsl:output-character character="&frac45;" string="⅘"   /> <!--fraction four-fifths-->
        <xsl:output-character character="&frac16;" string="⅙"   /> <!--fraction one-sixth-->
        <xsl:output-character character="&frac56;" string="⅚"   /> <!--fraction five-sixths-->
        <xsl:output-character character="&incare;" string="℅"   /> <!--in-care-of symbol-->
        <xsl:output-character character="&block;" string="█"   /> <!--full block-->
        <xsl:output-character character="&uhblk;" string="▀"   /> <!--upper half block-->
        <xsl:output-character character="&lhblk;" string="▄"   /> <!--lower half block-->
        <xsl:output-character character="&blk14;" string="░"   /> <!--25% shaded block-->
        <xsl:output-character character="&blk12;" string="▒"   /> <!--50% shaded block-->
        <xsl:output-character character="&blk34;" string="▓"   /> <!--75% shaded block-->
        <xsl:output-character character="&marker;" string="▮"   /> <!--histogram marker-->
        <xsl:output-character character="&cir;" string="○"   /> <!--/circ B: circle, open-->
        <xsl:output-character character="&squ;" string="□"   /> <!--square, open-->
        <xsl:output-character character="&rect;" string="▭"   /> <!--rectangle, open-->
        <xsl:output-character character="&utri;" string="▵;"   /> <!--/triangle up triangle, open-->
        <xsl:output-character character="&dtri;" string="▿"   /> <!--/triangledown down triangle, open-->
        <xsl:output-character character="&star;" string="☆"   /> <!--star, open-->
        <xsl:output-character character="&bull;" string="•"   /> <!--/bullet B: round bullet, filled-->
        <xsl:output-character character="&squf;" string="▪"   /> <!--/blacksquare sq bullet, filled-->
        <xsl:output-character character="&utrif;" string="▴"   /> <!--/blacktriangle up tri, filled-->
        <xsl:output-character character="&dtrif;" string="▾"   /> <!--/blacktriangledown dn tri, filled-->
        <xsl:output-character character="&ltrif;" string="◂"   /> <!--/blacktriangleleft R: l tri, filled-->
        <xsl:output-character character="&rtrif;" string="▸"   /> <!--/blacktriangleright R: r tri, filled-->
        <xsl:output-character character="&clubs;" string="♣"   /> <!--/clubsuit club suit symbol-->
        <xsl:output-character character="&diams;" string="♢"   /> <!--/diamondsuit diamond suit symbol-->
        <xsl:output-character character="&hearts;" string="♡"   /> <!--/heartsuit heart suit symbol-->
        <xsl:output-character character="&spades;" string="♠"   /> <!--/spadesuit spades suit symbol-->
        <xsl:output-character character="&malt;" string="✠"   /> <!--/maltese maltese cross-->
        <xsl:output-character character="&dagger;" string="†"   /> <!--/dagger B: dagger-->
        <xsl:output-character character="&Dagger;" string="‡"   /> <!--/ddagger B: double dagger-->
        <xsl:output-character character="&check;" string="✓"   /> <!--/checkmark tick, check mark-->
        <xsl:output-character character="&cross;" string="✗"   /> <!--ballot cross-->
        <xsl:output-character character="&sharp;" string="♯"   /> <!--/sharp musical sharp-->
        <xsl:output-character character="&flat;" string="♭"   /> <!--/flat musical flat-->
        <xsl:output-character character="&male;" string="♂"   /> <!--male symbol-->
        <xsl:output-character character="&female;" string="♀"   /> <!--female symbol-->
        <xsl:output-character character="&phone;" string="☎"   /> <!--telephone symbol-->
        <xsl:output-character character="&telrec;" string="⌕"   /> <!--telephone recorder symbol-->
        <xsl:output-character character="&copysr;" string="℗"   /> <!--sound recording copyright sign-->
        <xsl:output-character character="&caret;" string="⁁"   /> <!--caret (insertion mark)-->
        <xsl:output-character character="&lsquor;" string="‚"   /> <!--rising single quote, left (low)-->
        <xsl:output-character character="&ldquor;" string="„"   /> <!--rising dbl quote, left (low)-->
        
        <xsl:output-character character="&fflig;" string="ﬀ"   /> <!--small ff ligature-->
        <xsl:output-character character="&filig;" string="ﬁ"   /> <!--small fi ligature-->
        <!--<xsl:output-character character="&fjlig;" string="fj"   />--> <!--small fj ligature-->
        <xsl:output-character character="&ffilig;" string="ﬃ"   /> <!--small ffi ligature-->
        <xsl:output-character character="&ffllig;" string="ﬄ"   /> <!--small ffl ligature-->
        <xsl:output-character character="&fllig;" string="ﬂ"   /> <!--small fl ligature-->
        
        <xsl:output-character character="&mldr;" string="‥"   /> <!--em leader-->
        <xsl:output-character character="&rdquor;" string="”"   /> <!--rising dbl quote, right (high)-->
        <xsl:output-character character="&rsquor;" string="’"   /> <!--rising single quote, right (high)-->
        <xsl:output-character character="&vellip;" string="⋮"   /> <!--vertical ellipsis-->
        
        <xsl:output-character character="&hybull;" string="⁃"   /> <!--rectangle, filled (hyphen bullet)-->
        <xsl:output-character character="&loz;" string="◊"   /> <!--/lozenge - lozenge or total mark-->
        <xsl:output-character character="&lozf;" string="✦"   /> <!--/blacklozenge - lozenge, filled-->
        <xsl:output-character character="&ltri;" string="◃"   /> <!--/triangleleft B: l triangle, open-->
        <xsl:output-character character="&rtri;" string="▹"   /> <!--/triangleright B: r triangle, open-->
        <xsl:output-character character="&starf;" string="★"   /> <!--/bigstar - star, filled-->
        
        <xsl:output-character character="&natur;" string="♮"   /> <!--natural - music natural-->
        <xsl:output-character character="&rx;" string="℞"   /> <!--pharmaceutical prescription (Rx)-->
        <xsl:output-character character="&sext;" string="✶"   /> <!--sextile (6-pointed star)-->
        
        <!--<xsl:output-character character="&target;" string="#x2316;"   />--> <!--register mark or target-->
        <!--<xsl:output-character character="&dlcrop;" string="#x230D;"   />--> <!--downward left crop mark -->
        <!--<xsl:output-character character="&drcrop;" string="#x230C;"   />--> <!--downward right crop mark -->
        <!--<xsl:output-character character="&ulcrop;" string="#x230F;"   />--> <!--upward left crop mark -->
        <!--<xsl:output-character character="&urcrop;" string="#x230E;"   />--> <!--upward right crop mark -->
        
        <xsl:output-character character="&aleph;" string="ℵ"   /> <!--aleph aleph, Hebrew-->
        <xsl:output-character character="&and;" string="∧"   /> <!--wedge /land B: logical and-->
        <xsl:output-character character="&ang90;" string="∟"   /> <!--right (90 degree) angle-->
        <xsl:output-character character="&angsph;" string="∢"   /> <!--sphericalangle angle-spherical-->
        <xsl:output-character character="&ap;" string="≅"   /> <!--/approx R: approximate-->
        <xsl:output-character character="&becaus;" string="∵"   /> <!--because R: because-->
        <xsl:output-character character="&bottom;" string="⊥"   /> <!--bot B: perpendicular-->
        <xsl:output-character character="&cap;" string="∩"   /> <!--cap B: intersection-->
        <xsl:output-character character="&cong;" string="≅"   /> <!--/cong R: congruent with-->
        <xsl:output-character character="&conint;" string="∮"   /> <!--oint L: contour integral operator-->
        <xsl:output-character character="&cup;" string="∪"   /> <!--/cup B: union or logical sum-->
        <xsl:output-character character="&equiv;" string="≡"   /> <!--equiv R: identical with-->
        <xsl:output-character character="&exist;" string="∃"   /> <!--exists at least one exists-->
        <xsl:output-character character="&forall;" string="∀"   /> <!--forall for all-->
        <xsl:output-character character="&fnof;" string="ƒ"   /> <!--function of (italic small f)-->
        <xsl:output-character character="&ge;" string="≥"   /> <!--geq /ge R: greater-than-or-equal-->
        <xsl:output-character character="&iff;" string="⇔"   /> <!--/iff if and only if-->
        <xsl:output-character character="&infin;" string="∞"   /> <!--/infty infinity-->
        <xsl:output-character character="&int;" string="∫"   /> <!--/int L: integral operator-->
        <xsl:output-character character="&isin;" string="∈"   /> <!--/in R: set membership-->
        <xsl:output-character character="&lang;" string="〈"   /> <!--/langle O: left angle bracket-->
        <xsl:output-character character="&lArr;" string="⇐"   /> <!--/Leftarrow A: is implied by-->
        <xsl:output-character character="&le;" string="≤"   /> <!--/leq /le R: less-than-or-equal-->
        <xsl:output-character character="&minus;" string="−"   /> <!--B: minus sign-->
        <xsl:output-character character="&mnplus;" string="∓"   /> <!--/mp B: minus-or-plus sign-->
        <xsl:output-character character="&nabla;" string="∇"   /> <!--/nabla del, Hamilton operator-->
        <xsl:output-character character="&ne;" string="≠"   /> <!--/ne /neq R: not equal-->
        <xsl:output-character character="&ni;" string="∋"   /> <!--/ni /owns R: contains-->
        <xsl:output-character character="&or;" string="∨"   /> <!--/vee /lor B: logical or-->
        <xsl:output-character character="&par;" string="∥"   /> <!--/parallel R: parallel-->
        <xsl:output-character character="&part;" string="∂"   /> <!--/partial partial differential-->
        <xsl:output-character character="&permil;" string="‰"   /> <!--per thousand-->
        <xsl:output-character character="&perp;" string="⊥"   /> <!--/perp R: perpendicular-->
        <xsl:output-character character="&prime;" string="′"   /> <!--/prime prime or minute-->
        <xsl:output-character character="&Prime;" string="″"   /> <!--double prime or second-->
        <xsl:output-character character="&prop;" string="∝"   /> <!--/propto R: is proportional to-->
        <xsl:output-character character="&radic;" string="√"   /> <!--/surd radical-->
        <xsl:output-character character="&rang;" string="〉"   /> <!--/rangle C: right angle bracket-->
        <xsl:output-character character="&rArr;" string="⇒"   /> <!--/Rightarrow A: implies-->
        <xsl:output-character character="&sim;" string="∼"   /> <!--/sim R: similar-->
        <xsl:output-character character="&sime;" string="≃"   /> <!--/simeq R: similar, equals-->
        <xsl:output-character character="&square;" string="□"   /> <!--/square B: square-->
        <xsl:output-character character="&sub;" string="⊂"   /> <!--/subset R: subset or is implied by-->
        <xsl:output-character character="&sube;" string="⊆"   /> <!--/subseteq R: subset, equals-->
        <xsl:output-character character="&sup;" string="⊃"   /> <!--/supset R: superset or implies-->
        <xsl:output-character character="&supe;" string="⊇"   /> <!--/supseteq R: superset, equals-->
        <xsl:output-character character="&there4;" string="∴"   /> <!--/therefore R: therefore-->
        <xsl:output-character character="&Verbar;" string="‖"   /> <!--/Vert dbl vertical bar-->
        
        <xsl:output-character character="&angst;" string="Å"   /> <!--Angstrom capital A, ring-->
        <xsl:output-character character="&bernou;" string="ℬ"   /> <!--Bernoulli function (script capital B)-->
        <xsl:output-character character="&compfn;" string="∘"   /> <!--B: composite function (small circle)-->
        <xsl:output-character character="&Dot;" string="¨"   /> <!--dieresis or umlaut mark-->
        <!--<xsl:output-character character="&DotDot;" string="#x20DC;"   />--> <!--four dots above-->
        <xsl:output-character character="&hamilt;" string="ℍ"   /> <!--Hamiltonian (script capital H)-->
        <xsl:output-character character="&lagran;" string="ℒ"   /> <!--Lagrangian (script capital L)-->
        <xsl:output-character character="&lowast;" string="∗"   /> <!--low asterisk-->
        <xsl:output-character character="&notin;" string="∉"   /> <!--N: negated set membership-->
        <xsl:output-character character="&order;" string="ℴ"   /> <!--order of (script small o)-->
        <xsl:output-character character="&phmmat;" string="ℳ"   /> <!--physics M-matrix (script capital M)-->
        <!--<xsl:output-character character="&tdot;" string="#x20DB;"   />--> <!--three dots above-->
        <xsl:output-character character="&tprime;" string="‴"   /> <!--triple prime-->
        <xsl:output-character character="&wedgeq;" string="≙"   /> <!--R: corresponds to (wedge, equals)-->
    
    </xsl:character-map>
</xsl:stylesheet>