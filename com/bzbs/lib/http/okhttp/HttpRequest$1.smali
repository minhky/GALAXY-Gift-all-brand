.class Lcom/bzbs/lib/http/okhttp/HttpRequest$1;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Lcom/bzbs/lib/http/CacheLibs$addOnListenerGet;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/http/okhttp/HttpRequest;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/http/okhttp/HttpRequest;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/http/okhttp/HttpRequest;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$1;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 2

    .prologue
    .line 151
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 140
    invoke-static {p1}, Lcom/bzbs/lib/utils/ValidateUtils;->a(Ljava/lang/String;)Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;->c:Lcom/bzbs/lib/utils/ValidateUtils$JSON_TYPE;

    if-eq v0, v1, :cond_10

    .line 141
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$1;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 147
    :cond_10
    :goto_10
    return-void

    .line 144
    :cond_11
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$1;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->b(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/CacheListener;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 145
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$1;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->b(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Lcom/bzbs/lib/http/okhttp/CacheListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/http/okhttp/HttpRequest$1;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest;

    invoke-static {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest;->c(Lcom/bzbs/lib/http/okhttp/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/bzbs/lib/http/okhttp/CacheListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method
