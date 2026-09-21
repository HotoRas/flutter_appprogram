export declare interface DartPublicSpec {
    name: string,
    version: string,
    description: string,
    homepage?: string,
    repository?: string,
    issue_tracker?: string,
    documentation?: string,
    dependencies?: {[key: string]: Object},
    dev_dependencies?: {[key: string]: Object},
    dependency_overrides?: {[key: string]: Object},
    executables?: {[key: string]: string | null},
    environment: {sdk: string, [key: string]: Object},
    platforms?: {[key: string]: null},
    publish_to?: "none" | string[],
    funding?: string[],
    false_secrets?: string[],
    screenshots?: {description: string, path: string}[],
    topics?: string[],
    ignored_advisories?: string[],
    hooks?: {[key: string]: Object},
}

export declare interface FlutterPublicSpec extends DartPublicSpec {
    flutter: {
        assets?: (
            string |
            {path: string, flavors: string[]} |
            {path: string, transformers: {package: string, args: string[]}[]}
        )[],
        config?: {[key: string]: Object},
        default_flavor?: string,
        "deffered-components"?: {name: string, libraries: string[], assets: string[]}[],
        fonts?: (
            {family: string, fonts: {asset: string, weight?: bigint, style?: string}[]} |
            {asset: string, weight?: bigint, style?: string} |
            string
        )[],
        generate?: boolean,
        licenses?: string[],
        module?: {[key: string]: string},
        plugin?: {
            platforms: {[platform: string]: {
                package: string,
                pluginClass: string,
                dartPluginClass: string,
                ffiPlugin: boolean,
                default_package: string,
                filename: string
            }},
            implements?: string[]
        },
        shaders?: string[],
        "uses-material-design"?: boolean,
    }
}