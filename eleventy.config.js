// Boost files .md
// https://markdown-it.github.io/
import markdownIt from "markdown-it";

// https://github.com/arve0/markdown-it-attrs?tab=readme-ov-file#examples
import markdownItAttrs from "markdown-it-attrs";

// https://github.com/mb21/markdown-it-bracketed-spans
import markdownItBracketedSpan from "markdown-it-bracketed-spans";

import pluginNavigation from "@11ty/eleventy-navigation";

// 11ty Setting
export default async function(eleventyConfig) {

	eleventyConfig.addPlugin(pluginNavigation);

    // Show url in terminal output
    eleventyConfig.setServerOptions({
        showAllHosts: true,
    });

    // Show url in terminal output
    eleventyConfig.setServerOptions({
        showAllHosts: true,
    });

    eleventyConfig
    .addPassthroughCopy({ "src/_11ty/_static/css": "css" })
        .addPassthroughCopy({ "src/_11ty/_static/icon": "favicon" })
        .addPassthroughCopy({ "src/_11ty/_static/bookmedia": "bookmedia" })
        .addPassthroughCopy({ "src/_11ty/_static/images": "img" });

    // Copyright shortcode
    eleventyConfig.addShortcode("copy", async () => `&#169;&nbsp;${new Date().getFullYear()}&nbsp;Dorothy&nbsp;Pensky`);

    eleventyConfig.addFilter('encode', function(url) {
        return url
            .replace('://', '%3A%2F%2F');
    });

    // Set the markdown configuration in 11ty
    const markdownLib = markdownIt({
        html: true,
        breaks: true,
        linkify: true
    })
    .use(markdownItBracketedSpan)
    .use(markdownItAttrs)
    eleventyConfig.setLibrary('md', markdownLib);
}

export const config = {
    // src Formats
    templateFormats: [ "md", "njk", "html" ],

    // Nunjucks  engine in .md & .html file
    markdownTemplateEngine: "njk",
    htmlTemplateEngine: "njk",

    // Directory
    dir: {
        input: "./src/content/",
        includes: "../_11ty/_includes/",
        layouts: "../_11ty/_layouts/",
        data: "../_11ty/_data/",
        output: "./public/",
        },
};
