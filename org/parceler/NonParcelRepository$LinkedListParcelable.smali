.class public final Lorg/parceler/NonParcelRepository$LinkedListParcelable;
.super Lorg/parceler/NonParcelRepository$ConverterParcelable;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/NonParcelRepository$ConverterParcelable",
        "<",
        "Ljava/util/LinkedList;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lorg/parceler/NonParcelRepository$LinkedListParcelable$LinkedListParcelableCreator;

.field private static final a:Lorg/parceler/converter/LinkedListParcelConverter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 311
    new-instance v0, Lorg/parceler/NonParcelRepository$LinkedListParcelable$1;

    invoke-direct {v0}, Lorg/parceler/NonParcelRepository$LinkedListParcelable$1;-><init>()V

    sput-object v0, Lorg/parceler/NonParcelRepository$LinkedListParcelable;->a:Lorg/parceler/converter/LinkedListParcelConverter;

    .line 333
    new-instance v0, Lorg/parceler/NonParcelRepository$LinkedListParcelable$LinkedListParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/parceler/NonParcelRepository$LinkedListParcelable$LinkedListParcelableCreator;-><init>(Lorg/parceler/NonParcelRepository$1;)V

    sput-object v0, Lorg/parceler/NonParcelRepository$LinkedListParcelable;->CREATOR:Lorg/parceler/NonParcelRepository$LinkedListParcelable$LinkedListParcelableCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 325
    sget-object v0, Lorg/parceler/NonParcelRepository$LinkedListParcelable;->a:Lorg/parceler/converter/LinkedListParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Landroid/os/Parcel;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 326
    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedList;)V
    .registers 4

    .prologue
    .line 329
    sget-object v0, Lorg/parceler/NonParcelRepository$LinkedListParcelable;->a:Lorg/parceler/converter/LinkedListParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Ljava/lang/Object;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 330
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 309
    invoke-super {p0}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .prologue
    .line 309
    invoke-super {p0, p1, p2}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
