.class public Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;
.super Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;
.source "NetscapeDraftSpec.java"


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 64
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;-><init>()V

    .line 65
    if-eqz p1, :cond_47

    .line 66
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;->a:[Ljava/lang/String;

    .line 70
    :goto_d
    const-string/jumbo v0, "path"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 71
    const-string/jumbo v0, "domain"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDomainHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDomainHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 72
    const-string/jumbo v0, "secure"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 73
    const-string/jumbo v0, "comment"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 74
    const-string/jumbo v0, "expires"

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;->a:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;->a(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 76
    return-void

    .line 68
    :cond_47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "EEE, dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;->a:[Ljava/lang/String;

    goto :goto_d
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/Header;",
            "Lcz/msebera/android/httpclient/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 109
    const-string/jumbo v0, "Header"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Set-Cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 112
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized cookie header \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_3f
    sget-object v2, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->a:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;

    .line 118
    instance-of v0, p1, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v0, :cond_69

    move-object v0, p1

    .line 119
    check-cast v0, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/FormattedHeader;->a()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v1

    .line 120
    new-instance v0, Lcz/msebera/android/httpclient/message/ParserCursor;

    check-cast p1, Lcz/msebera/android/httpclient/FormattedHeader;

    .line 121
    invoke-interface {p1}, Lcz/msebera/android/httpclient/FormattedHeader;->b()I

    move-result v3

    .line 122
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 132
    :goto_5b
    const/4 v3, 0x1

    new-array v3, v3, [Lcz/msebera/android/httpclient/HeaderElement;

    invoke-virtual {v2, v1, v0}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {p0, v3, p2}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;->a([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 124
    :cond_69
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v0

    .line 125
    if-nez v0, :cond_78

    .line 126
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string/jumbo v1, "Header value is null"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_78
    new-instance v1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 129
    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v3

    invoke-direct {v0, v5, v3}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    goto :goto_5b
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    const-string/jumbo v0, "List of cookies"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 137
    new-instance v2, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    invoke-direct {v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 138
    const-string/jumbo v0, "Cookie"

    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v0, ": "

    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    move v1, v0

    :goto_1f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4d

    .line 141
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 142
    if-lez v1, :cond_33

    .line 143
    const-string/jumbo v3, "; "

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 145
    :cond_33
    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 146
    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->b()Ljava/lang/String;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_49

    .line 148
    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 140
    :cond_49
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f

    .line 152
    :cond_4d
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    new-instance v1, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-object v0
.end method

.method public b()Lcz/msebera/android/httpclient/Header;
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    const-string/jumbo v0, "netscape"

    return-object v0
.end method
