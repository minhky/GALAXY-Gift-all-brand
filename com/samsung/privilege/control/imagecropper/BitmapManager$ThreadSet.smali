.class public Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadSet;
.super Ljava/lang/Object;
.source "BitmapManager.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/control/imagecropper/BitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Thread;",
        ">;"
    }
.end annotation


# instance fields
.field private final mWeakCollection:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadSet;->mWeakCollection:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Thread;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadSet;->mWeakCollection:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadSet;->mWeakCollection:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Thread;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadSet;->mWeakCollection:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method