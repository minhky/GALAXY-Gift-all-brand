.class public final Lcom/google/zxing/client/result/WifiResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "WifiResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x3b

    const/4 v5, 0x0

    .line 35
    invoke-static {p1}, Lcom/google/zxing/client/result/WifiResultParser;->c(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v1

    .line 36
    const-string/jumbo v2, "WIFI:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 49
    :cond_11
    :goto_11
    return-object v0

    .line 39
    :cond_12
    const-string/jumbo v2, "S:"

    invoke-static {v2, v1, v6, v5}, Lcom/google/zxing/client/result/WifiResultParser;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    .line 40
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 43
    const-string/jumbo v0, "P:"

    invoke-static {v0, v1, v6, v5}, Lcom/google/zxing/client/result/WifiResultParser;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    .line 44
    const-string/jumbo v0, "T:"

    invoke-static {v0, v1, v6, v5}, Lcom/google/zxing/client/result/WifiResultParser;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    .line 45
    if-nez v0, :cond_34

    .line 46
    const-string/jumbo v0, "nopass"

    .line 48
    :cond_34
    const-string/jumbo v4, "H:"

    invoke-static {v4, v1, v6, v5}, Lcom/google/zxing/client/result/WifiResultParser;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 49
    new-instance v1, Lcom/google/zxing/client/result/WifiParsedResult;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_11
.end method

.method public synthetic b(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 3

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/WifiResultParser;->a(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;

    move-result-object v0

    return-object v0
.end method
