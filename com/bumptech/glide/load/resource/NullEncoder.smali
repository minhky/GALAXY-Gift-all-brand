.class public Lcom/bumptech/glide/load/resource/NullEncoder;
.super Ljava/lang/Object;
.source "NullEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Encoder",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/resource/NullEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/NullEncoder",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lcom/bumptech/glide/load/resource/NullEncoder;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/NullEncoder;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/NullEncoder;->a:Lcom/bumptech/glide/load/resource/NullEncoder;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/bumptech/glide/load/Encoder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/Encoder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 22
    sget-object v0, Lcom/bumptech/glide/load/resource/NullEncoder;->a:Lcom/bumptech/glide/load/resource/NullEncoder;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method
