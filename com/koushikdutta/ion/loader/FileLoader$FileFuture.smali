.class final Lcom/koushikdutta/ion/loader/FileLoader$FileFuture;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/SimpleFuture",
        "<",
        "Lcom/koushikdutta/async/DataEmitter;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/ion/loader/FileLoader$1;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/koushikdutta/ion/loader/FileLoader$FileFuture;-><init>()V

    return-void
.end method
