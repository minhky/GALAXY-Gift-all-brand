.class final Lorg/parceler/NonParcelRepository$SparseArrayParcelable$1;
.super Lorg/parceler/converter/SparseArrayParcelConverter;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/NonParcelRepository$SparseArrayParcelable;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 664
    invoke-direct {p0}, Lorg/parceler/converter/SparseArrayParcelConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 668
    const-class v0, Lorg/parceler/NonParcelRepository$SparseArrayParcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lorg/parceler/Parcels;->a(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/os/Parcel;)V
    .registers 5

    .prologue
    .line 673
    invoke-static {p1}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 674
    return-void
.end method
