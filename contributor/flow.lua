-- Modify internal links of {sadoc}, {vidoc}, and {padoc} to point to pages of the
-- component sites. NOTE: {vidoc} is for {vise}, not {varnish}
function Link(el)
    local href = el.target
    local src = "https://carpentries.github.io/"
    href,_ = href:gsub("%%7Bsadoc%%7D", src.."sandpaper/reference")
    href,_ = href:gsub("%%7Bvidoc%%7D", src.."vise/reference")
    href,_ = href:gsub("%%7Bvadoc%%7D", src.."varnish/reference")
    href,_ = href:gsub("%%7Bpadoc%%7D", src.."pegboard/reference")
    el.target = href
    return el
end

