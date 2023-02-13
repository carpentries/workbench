
-- Reformat all heading text
-- function Header(el)
--   el.content = pandoc.Emph(el.content)
--   return el
-- end

-- add onerror to all images
function Image(el)
    el.attributes.onerror = 'imgError(this);'
    return el
end
