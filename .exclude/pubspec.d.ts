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
        )[]
    }
}