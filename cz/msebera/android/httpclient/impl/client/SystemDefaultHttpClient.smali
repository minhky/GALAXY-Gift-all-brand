.class public Lcz/msebera/android/httpclient/impl/client/SystemDefaultHttpClient;
.super Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;
.source "SystemDefaultHttpClient.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0, v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 3
    .param p1, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 113
    return-void
.end method


# virtual methods
.method protected createClientConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .registers 6

    .prologue
    .line 121
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;

    .line 122
    invoke-static {}, Lcz/msebera/android/httpclient/impl/conn/SchemeRegistryFactory;->createSystemDefault()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v3

    invoke-direct {v0, v3}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    .line 123
    .local v0, "connmgr":Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;
    const-string/jumbo v3, "http.keepAlive"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 125
    const-string/jumbo v3, "http.maxConnections"

    const-string/jumbo v4, "5"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 127
    .local v1, "max":I
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->setDefaultMaxPerRoute(I)V

    .line 128
    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->setMaxTotal(I)V

    .line 130
    .end local v1    # "max":I
    :cond_32
    return-object v0
.end method

.method protected createConnectionReuseStrategy()Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .registers 4

    .prologue
    .line 141
    const-string/jumbo v1, "http.keepAlive"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "s":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 143
    new-instance v1, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;-><init>()V

    .line 145
    :goto_18
    return-object v1

    :cond_19
    new-instance v1, Lcz/msebera/android/httpclient/impl/NoConnectionReuseStrategy;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/NoConnectionReuseStrategy;-><init>()V

    goto :goto_18
.end method

.method protected createHttpRoutePlanner()Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .registers 4

    .prologue
    .line 135
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/ProxySelectorRoutePlanner;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/SystemDefaultHttpClient;->getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v1

    .line 136
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/conn/ProxySelectorRoutePlanner;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)V

    return-object v0
.end method
